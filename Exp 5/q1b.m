%circular convolution using linear convolution
clc;
clear all;
close all;
x = [1 2 3 4];
h = [1 1 1];
y = conv(x, h);
l = length(x);
m = length(h);
for i = 1:m-1
    y(i) = y(l + i) + y(i); 
end
res = y(1:l);
disp('Circular convolution using Linear Convolution output');
disp(res);
% Verification using FFT-based circular convolution
x = [1 2 3 4];
h = [1 1 1];
l = length(x);
m = length(h);
% Pad h with zeros to make it the same length as x
h = [h, zeros(1, l - m)];
X_K = fft(x);
H_K = fft(h);
Y_K = X_K .* H_K;
y_fft = ifft(Y_K);
disp('Verification (Circular Convolution using FFT)');
disp(y_fft);
