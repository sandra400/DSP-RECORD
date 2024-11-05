%linearity property 
clc; 
clear all; 
close all; 
x1=input('Enter the first sequence:'); 
x2=input('Enter the second sequence:'); 
a=2; b=3; l1=length(x1);
l2=length(x2); 
if l1>l2     
    x2=[x2 zeros(1,l1-l2)]
else     
    x1=[x1 zeros(1,l2-l1)]; 
end 
LHS=fft((a.*x1)+(b.*x2)); 
RHS=[a.*fft(x1)+b.*fft(x2)]; 
disp('LHS:'); 
disp(LHS); 
disp('RHS:');
disp(RHS); 
disp('LHS=RHS');

