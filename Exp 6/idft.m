%idft using inbuilt and manual functions 
clc; 
clear all;
close all; 
X=input('Enter the sequence:'); 
N=input('Enter the N point of DFT:'); 
l=length(X); X=[X zeros(1,N-l)];
x=zeros(N,1); 
for k=0:N-1    
    for n=0:N-1 
        x(n+1)= x(n+1)+X(k+1)*exp(1j*2*pi*n*k/N);  
    end 
end 
x=(1/N).*x; 
disp('x');
disp(x);
disp('IDFT'); 
disp(ifft(X,N)); 
