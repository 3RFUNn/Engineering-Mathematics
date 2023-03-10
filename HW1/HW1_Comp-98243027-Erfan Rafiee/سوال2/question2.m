clc;
clear all;
close all;

syms t
T=4;
w=2*pi/T;
t0=-2;
x=heaviside(t+1)-heaviside(t-1);

a0=(1/T)*int(x,t,t0,t0+T);

%% for N=1000
n=1:1000;
    
b=(2/T)*int(x*cos(n*w*t),t,t0,t0+T);     
c=(2/T)*int(x*sin(n*w*t),t,t0,t0+T);   

xx=a0+sum(b.*cos(n*w*t))+sum(c.*sin(n*w*t));

subplot(2,1,1)
ezplot(x,[-2 2]);
title('orginal function')

subplot(2,1,2)
ezplot(xx-x,[-2 2]);
title('square error')
grid on