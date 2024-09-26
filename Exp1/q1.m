clc;
clear all;
close all;
%unit impulse signal
t1=-5:1:5;
y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,1);
stem(t1,y1,'filled');%triangular signal
t9=0:0.01:1;
f9=3;
y9=sawtooth(2*pi*f9*t9,0.5);
subplot(3,3,9);
plot(t9,y9);
hold on;
stem(t9,y9,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Triangular signal");
legend("Discrete","Continuous");

xlabel("Time");
ylabel("Amplitude");
title("Unit Impulse Signal");
%unit step signal
t2=-5:1:5;
y2=[zeros(1,5),ones(1,6)];
subplot(3,3,2);
stem(t2,y2,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Unit Step Signal");
%unit ramp signal
t3=0:1:5;
y3=t3;
subplot(3,3,3);
plot(t3,y3);
hold on;
stem(t3,y3,'filled');                                                        
xlabel("Time");
ylabel("Amplitude");
title("Unit Ramp Signal");
legend("Discrete","Continuous");
%sine signal
t4=0:0.01:1;
f4=2;
y4=sin(2*pi*f4*t4);
subplot(3,3,4);
plot(t4,y4);
hold on;
stem(t4,y4,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Sine signal");
legend("Discrete","Continuous");
%cosine signal
t5=0:0.01:1;
f5=2;
y5=cos(2*pi*f5*t5);
subplot(3,3,5);
plot(t5,y5);
hold on;
stem(t5,y5,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Cosine signal");
legend("Discrete","Continuous");
%unipolar signal
f6=5;
t6=0:0.001:1;
y6=sqrt(square(2*pi*f6*t6));
subplot(3,3,6);
plot(t6,y6);
xlabel("Time");
ylabel("Amplitude");
title("Unipolar signal");
ylim([-2,2]);
%bipolar signal
f7=5;
t7=0:0.001:1;
y7=square(2*pi*f7*t7);
subplot(3,3,7);
plot(t7,y7);
xlabel("Time");
ylabel("Amplitude");
title("Bipolar signal");
ylim([-2,2]);
%exponential signal
t8=0:0.1:5;
y8=exp(t8);
subplot(3,3,8);
plot(t8,y8);
hold on;
stem(t8,y8,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Exponential signal");
legend("Discrete","Continuous");
%triangular signal
t9=0:0.01:1;
f9=3;
y9=sawtooth(2*pi*f9*t9,0.5);
subplot(3,3,9);
plot(t9,y9);
hold on;
stem(t9,y9,'filled');
xlabel("Time");
ylabel("Amplitude");
title("Triangular signal");
legend("Discrete","Continuous");




