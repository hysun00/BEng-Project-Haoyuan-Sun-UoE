#include "pool.h"
#include <hls_stream.h>

void pool
(
	hls::stream<dtype_bus> &in,
	hls::stream<dtype_stream> &out,
	int ch_div_K,
	int height_in,
	int width_in,
	int height_out,
	int width_out,
	int Kx,
	int Ky
)
{
    #pragma HLS INTERFACE axis register both port=out
    #pragma HLS INTERFACE axis register both port=in
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=width_in
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=height_in
	#pragma HLS INTERFACE s_axilite port=height_out
	#pragma HLS INTERFACE s_axilite port=width_out
	#pragma HLS INTERFACE s_axilite port=ch_div_K

	#pragma HLS DATAFLOW
	static hls::stream<dtype_bus> stream_tp;
	#pragma HLS STREAM variable=stream_tp depth=8 dim=1

	static hls::stream<dtype_bus> stream_tp2;

	pool_1D(in,stream_tp,ch_div_K,height_in,width_in,Kx);
	pool_2D(stream_tp,stream_tp2,ch_div_K,height_in,width_out,Ky);
	hs2axis(stream_tp2,out,ch_div_K,height_out,width_out);
}

void hs2axis
(
	hls::stream<dtype_bus> &in,
	hls::stream<dtype_stream> &out,
	int ch_div_K,
	int height_out,
	int width_out
)
{
	for(int i=0;i<height_out*width_out*ch_div_K;i++)
	{
		#pragma HLS PIPELINE II=1
		#pragma HLS LOOP_TRIPCOUNT min=200 max=200 avg=200

		dtype_stream tp;
		tp.data=in.read();
		if(i==(height_out*width_out*ch_div_K-1))
			tp.last=1;
		else
			tp.last=0;
		out.write(tp);
	}
}

void pool_1D
(
	hls::stream<dtype_bus> &in,
	hls::stream<dtype_bus> &out,
	int ch_div_K,
	int height_in,
	int width_in,
	int Kx
)
{
	dtype_bus dff;

	for(int c=0;c<ch_div_K;c++)
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=1 avg=1
		for(int i=0;i<height_in;i++)
		{
			#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20
			for(int j=0;j<width_in;j++)
			{
				#pragma HLS PIPELINE II=1
				#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20

				dtype_bus in_block=in.read();

				dtype_bus tp_out;

				for(int k=0;k<K;k++)
				{
					if(j%Kx==0)
						tp_out.range(16*k+15,16*k)=in_block.range(16*k+15,16*k);
					else
						tp_out.range(16*k+15,16*k)=MAX((dtype_dat)dff.range(16*k+15,16*k),(dtype_dat)in_block.range(16*k+15,16*k));
				}

				if((j+1)%Kx==0) out.write(tp_out);//if output needed
				else dff=tp_out;
			}
		}
	}
}

void pool_2D
(
	hls::stream<dtype_bus> &in,
	hls::stream<dtype_bus> &out,
	int ch_div_K,
	int height_in,
	int width_out,
	int Ky
)
{
	static dtype_bus buf[POOL_2D_BUF_DEP];

	int ptr=0;

	for(int c=0;c<ch_div_K;c++)
	{
		#pragma HLS LOOP_TRIPCOUNT min=1 max=1 avg=1
		for(int i=0;i<height_in;i++)
		{
			#pragma HLS LOOP_TRIPCOUNT min=20 max=20 avg=20
			for(int j=0;j<width_out;j++)
			{
				#pragma HLS PIPELINE II=1
				#pragma HLS LOOP_TRIPCOUNT min=10 max=10 avg=10

				dtype_bus in_block=in.read();

				dtype_bus tp_in;
				dtype_bus tp_out;

				tp_in=buf[j];

				for(int k=0;k<K;k++)
				{
					if((i%Ky)==0)
						tp_out.range(16*k+15,16*k)=in_block.range(16*k+15,16*k);
					else //max pool
						tp_out.range(16*k+15,16*k)=MAX((dtype_dat)tp_in.range(16*k+15,16*k),(dtype_dat)in_block.range(16*k+15,16*k));
				}
				if((i+1)%Ky==0) out.write(tp_out);//if output needed
				else buf[j]=tp_out;
			}
		}
	}
}


