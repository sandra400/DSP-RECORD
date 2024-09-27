%circular convolution using FFT and IFFT
clc;
close all;
x=input("enter first sequence");
h=input("enter second sequence");
n=length(x);
m=length(h);
l=max(n,m);
xn=[x zeros(1,l-n)];
hn=[h zeros(1,l-m)];
n=fft(xn);
m=fft(hn);
yl=n.*m;
y=ifft(yl);
y_index=0:l-1;
disp(y);
stem(y_index,y);
xlabel("index");
ylabel("amplitude");
title("Using FFT & IFFT");