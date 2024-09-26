% without using built in function
clc;
close all;
x=input("enter input");
x_index=input("enter index of x");
h=input("enter impulse response");
h_index=input("enter index of h");
y_index=min(x_index)+min(h_index):max(x_index)+max(h_index);
n=length(x);
m=length(h);
len_y=length(y);
y=zeros(1,len_y);
for i=1:n
    for j=1:m
        y(i+j-1)=y(i+j-1)+x(i)*h(i);
    end
end
disp("Result:")
disp(y)
stem(y_index,y);
xlabel("index");
ylabel("amplitude");
title("Linear convolution without using built-in function");
