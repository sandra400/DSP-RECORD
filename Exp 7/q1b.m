%convolution property
clc; 
clear all; 
close all; 
x=input('enter sequence 1'); 
h=input('enter sequence 2');
N=max(length(x),length(h)); 
X=[x zeros(1,N-length(x))]; 
H=[h zeros(1,N-length(h))]; 
X1=fft(X); 
H1=fft(H); 
LHS= cconv(X,H,N); 
RHS=ifft(X1.*H1); 
disp(LHS); 
disp(RHS); 
if LHS==RHS     
    disp('Convolution property verified');
else     
    disp('Convolution property verified'); 
end  
