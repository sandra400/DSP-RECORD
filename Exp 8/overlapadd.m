%overlap add method 
clc;  
clear all; 
close all;  
x = input('Enter the input sequence: ');  
h = input('Enter the filter sequence: ');  
Lx = length(x);  
Lh = length(h);  
N = input('Enter the segment length (choose N >= Lh): '); 
if N < Lh  
    error('Segment length N must be greater than or equal to filter length');
end  
x	= [x, zeros(1, N - mod(Lx, N))];  
Lx_padded = length(x);  
y = zeros(1, Lx_padded + Lh - 1); 
for i = 1:N:Lx_padded    
    x_segment = x(i:i+N-1);      
    y_segment = conv(x_segment, h);  
    y(i:i+length(y_segment)-1) = y(i:i+length(y_segment)-1) + y_segment;  
end  
y	= y(1:Lx + Lh - 1);  
disp('final convoluted sequence:'); 
disp(y);  
  
 
