%overlap save method 
clc;  
clear all; 
close all;  
x=input("Enter sequence 1");  
h=input("Enter sequence 2"); 
N=input('Enter length to divide');  
if N<length(h)        
    disp('not possible');  
else          
xl=length(x); 
hl=length(h);          
L=N-hl+1;      
hnew=[h zeros(1,N-hl)];     
xnew=[zeros(1,hl-1),x,zeros(1,N-1)];    
y=[];      
for i=1:L:length(xnew)-N+1  
    XB=xnew(i:i+N-1);  
    YB=ifft(fft(XB).*fft(hnew));             
    y=[y,YB(hl:end)];      
end      
    disp(y(1:xl+hl-1)); 
 
end  
