% DFT using twiddle factor matrix  x = input('Enter the input sequence: ');  
N = length(x);   
W	= exp(-1i*2*pi*(0:N-1)'*(0:N-1)/N);  
X	= W * x(:);  
disp('DFT of the input sequence (using Twiddle Factor Matrix):'); 
disp(X);  
 
 
