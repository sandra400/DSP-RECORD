%multiplication property
clc;
clear all; 
close all; 
x1=input('enter the first sequence:'); 
x2=input('enter the second sequence:'); 
l1=length(x1); 
l2=length(x2); 
n=max(l1,l2);
x1=[x1 zeros(1,n-l1)];
x2=[x2 zeros(1,n-l2)]; 
lhs=fft(x1.*x2); 
X1=fft(x1); 
X2=fft(x2);
rhs=cconv(X1,X2,n)/n; 
disp(lhs); disp(rhs); 
