//#include<fastmath67x.h>
#include<math.h>
void main()
{
int *Xn,*Hn,*Output;
int *XnLength,*HnLength;
int i,k,n,l,m;
Xn=(int *)0x80010000; 
Hn=(int *)0x80011000; 
XnLength=(int *)0x80012000; 
HnLength=(int *)0x80012004; 
Output=(int *)0x80013000; 
l=*XnLength; 
m=*HnLength; 
for(i=0;i<(l+m-1);i++) 
{
Output[i]=0; 
Xn[l+i]=0; 
Hn[m+i]=0; 
}
for(n=0;n<(l+m-1);n++)
{
for(k=0;k<=n;k++) 
{
Output[n] =Output[n] + (Xn[k]*Hn[n-k]); 
}
}
}
