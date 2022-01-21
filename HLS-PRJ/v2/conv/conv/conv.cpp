#include "conv.h"

//Feature: [C/K][H][W][K]
//kernel: [CHout][Ky][Kx][CHin/K][K]


void conv
(
	ap_uint<16> CHin,
	ap_uint<16> Hin,
	ap_uint<16> Win,
	ap_uint<16> CHout,
	ap_uint<8> Kx,
	ap_uint<8> Ky,
	ap_uint<8> Sx,
	ap_uint<8> Sy,
	ap_uint<1> mode, //mode: 0:VALID, 1:SAME
	ap_uint<1> relu_en,
	dtype_bus feature_in[],
	ap_uint<4> feature_in_precision,
	dtype_bus W[],
	ap_uint<4> W_precision,
	dtype_dat B[],
	ap_uint<4> B_precision,
	dtype_bus feature_out[],
	ap_uint<4> feature_out_precision
)
{
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=feature_out_precision
	#pragma HLS INTERFACE s_axilite port=feature_in_precision
	#pragma HLS INTERFACE s_axilite port=Sy
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=Win
	#pragma HLS INTERFACE s_axilite port=Sx
	#pragma HLS INTERFACE s_axilite port=Hin
	#pragma HLS INTERFACE s_axilite port=W_precision
    #pragma HLS INTERFACE s_axilite port=B_precision
	#pragma HLS INTERFACE s_axilite port=relu_en
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=CHin
	#pragma HLS INTERFACE s_axilite port=mode
	#pragma HLS INTERFACE s_axilite port=CHout

	#pragma HLS INTERFACE m_axi depth=100 port=feature_in offset=slave bundle=AXI_F
	#pragma HLS INTERFACE m_axi depth=100 port=feature_out offset=slave bundle=AXI_F
	#pragma HLS INTERFACE m_axi depth=25  port=W offset=slave bundle=AXI_W
    #pragma HLS INTERFACE m_axi depth=25  port=B offset=slave


	ap_uint<8> pad_x,pad_y;
	//partitioning the input channel, each block contains k feature planes
	ap_uint<16> CHin_div_K=(CHin+K-1)/K;


	ap_uint<5> out_truncate_acc = feature_in_precision + W_precision - feature_out_precision;
	ap_uint<5> out_truncate_b = B_precision - feature_out_precision;

	if(mode == 0)
	{
		pad_x = 0;
		pad_y = 0;
	}
	else
	{
		pad_x = (Kx - 1) / 2;
		pad_y = (Ky - 1) / 2;
	}

	ap_uint<16> Hout = (Hin + 2*pad_y - Ky) / Sy + 1;
	ap_uint<16> Wout = (Win + 2*pad_x - Kx) / Sx + 1;



	dtype_acc sum_mac = 0;
	dtype_bus out_tp = 0;


	LOOP_i:for(int i=0;i<Hout;i++) //COLOUMN LOOP
	{
		LOOP_j:for(int j=0;j<Wout;j++) //ROW LOOP
		{
			LOOP_cout:for(int cout=0;cout<CHout;cout=cout+1)//CHANNEL LOOP(output)
			{

				dtype_dat b= B[cout] >> out_truncate_b;
				dtype_dat sum = 0;
				sum += b;

				LOOP_ii:for(int ii=0;ii<Ky;ii++)
				{
					LOOP_jj:for(int jj=0;jj<Kx;jj++)
					{
						LOOP_cin:for(int cin=0;cin<CHin_div_K;cin=cin+1)
						{
							#pragma HLS PIPELINE II=1
							ap_int<16> h=i*Sy-pad_y+ii;
							ap_int<16> w=j*Sx-pad_x+jj;

							dtype_mul_bus tp;
							dtype_bus dat;
							dtype_bus wt;

							// Load parameters
							if(h>=0 && w>=0 && h<Hin && w<Win)
							{
								dat=feature_in[cin*Hin*Win+h*Win+w];
								wt=W[cout*CHin_div_K*Kx*Ky+ii*CHin_div_K*Kx+jj*CHin_div_K+cin];
							}
							else
							{
								dat=0;
								wt=0;
							}

							for(int k=0;k<K;k++)
                                #pragma HLS PIPELINE II=1
								tp.range(k*32+31,k*32)=(dtype_dat)dat.range(k*16+15,k*16)*(dtype_dat)wt.range(k*16+15,k*16);
							for(int k=0;k<K;k++)
                                sum_mac+=(dtype_mul)tp.range(k*32+31,k*32);
						}}}


				  dtype_acc sum_mac_res=sum_mac>>out_truncate_acc;
				  sum_mac=0;
				  if(sum_mac_res>32767) sum_mac_res=32767;
				  if(sum_mac_res<-32768) sum_mac_res=-32768;
				  dtype_dat sum_mac_res_16=sum_mac_res;
				  sum+=sum_mac_res_16;
                  if(relu_en & sum<0) sum=0;

				  out_tp.range((cout%K)*16+15,(cout%K)*16)=sum;
				  sum=0;

				  if( ((cout%K)==K-1) || (cout==(CHout-1)) )
				  {
					feature_out[(cout/K)*Wout*Hout+i*Wout+j]=out_tp;
					out_tp=0;
				  }


			}}}

}

