clc;
clear all;
close all;

syms t  k n

T=4;
w=2*pi/T;
t0=-2;

x=heaviside(t+1)-heaviside(t-1);

k=-99:99;
a=(1/T)*int(x*exp(-j*w*k*t),t,t0,t0+T);
wk=w*k;

stem(wk,abs(eval(a)));
legend('Magnitude spectrum k =-99:99')
xlabel('\Omega')