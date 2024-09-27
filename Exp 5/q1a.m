%linear convolution using circular convolution
clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 1 1];
l_x=length(x);
l_h=length(h);
k=l_x+l_h-1;
h=[h,zeros(1,k-l_h)];
x=[x,zeros(1,k-l_x)];
X_K=fft(x);
H_K=fft(h);
Y_K=X_K.*H_K;
y=ifft(Y_K);
disp('Linear Convolution using Circular Convolution output')
disp(y);
%verification
x=[1 2 3 4];
h=[1 1 1];
y=conv(x,h);
disp('Verification');
disp(y);
