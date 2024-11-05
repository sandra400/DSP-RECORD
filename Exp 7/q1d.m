%parseval's theorem 
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
lhs=sum(x1.*conj(x2));
rhs=sum(fft(x1).*conj(fft(x2)))/n; 
disp('LHS'); 
disp(lhs); 
disp('RHS'); 
disp(rhs); 
