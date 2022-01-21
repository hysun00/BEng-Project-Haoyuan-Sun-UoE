#include "pool.h"
#include <stdio.h>

void pool_soft
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
);

int main(void)
{
	hls::stream<dtype_bus> in,in_soft;
	hls::stream<dtype_stream> out,out_soft;

	int ch_div_K=4;
	int height_in=4;
	int width_in=4;
	int Kx=2;
	int Ky=2;

	for(int c=0;c<ch_div_K;c++)
	{
		for(int i=0;i<height_in*width_in;i++)
		{
			dtype_bus tp;
			for(int j=0;j<K;j++)
			{
				if(j==0)
					tp.range(16*j+15,16*j)=rand()%4001-2000;
				else
					tp.range(16*j+15,16*j)=0;
			}
			in.write(tp);
			in_soft.write(tp);
		}
	}

	pool(in,out,ch_div_K,height_in,width_in,height_in/Ky,width_in/Kx,Kx,Ky);
	pool_soft(in_soft,out_soft,ch_div_K,height_in,width_in,height_in/Ky,width_in/Kx,Kx,Ky);

	int flag=1;
	for(int c=0;c<ch_div_K;c++)
	{
		for(int i=0;i<(height_in/Ky)*(width_in/Kx);i++)
		{
			dtype_stream tp=out.read();
			dtype_stream tp_soft=out_soft.read();
			if(tp.data!=tp_soft.data)
			{
				flag=0;
				std::cout<<"out     :"<<i/(width_in/Kx)<<","<<i%(width_in/Kx)<<":\t"<<std::hex<<tp.data<<",last="<<tp.last<<std::endl;
				std::cout<<"out_soft:"<<i/(width_in/Kx)<<","<<i%(width_in/Kx)<<":\t"<<std::hex<<tp_soft.data<<",last="<<tp.last<<std::endl<<std::endl;
			}
		}
	}

	if(flag==1)
		printf("match\n");
	else
		printf("mis-match\n");
}

void pool_soft(hls::stream<dtype_bus> &in,hls::stream<dtype_stream> &out,
		int ch_div_K,int height_in,int width_in,
		int height_out,int width_out,int Kx,int Ky)
{
	dtype_bus in_array[10000];
	for(int i=0;i<height_in*height_in*ch_div_K;i++)
		in_array[i]=in.read();

	for(int m=0;m<ch_div_K;m++)
	{
		for(int i=0;i<height_out;i++)
		{
			for(int j=0;j<width_out;j++)
			{
				dtype_bus tp;
				for(int k=0;k<K;k++)
					tp.range(16*k+15,16*k)=-32768;

				for(int ii=0;ii<Ky;ii++)
					for(int jj=0;jj<Kx;jj++)
					{
						int row=i*Kx+ii;
						int col=j*Ky+jj;
						dtype_bus dat=in_array[m*width_in*height_in+row*width_in+col];

						for(int k=0;k<K;k++)
							tp.range(16*k+15,16*k)=MAX((dtype_dat)tp.range(16*k+15,16*k),(dtype_dat)dat.range(16*k+15,16*k));
					}
				dtype_stream tp_stream;tp_stream.data=tp;tp_stream.last=0;
				out.write(tp_stream);
			}
		}
	}
}
