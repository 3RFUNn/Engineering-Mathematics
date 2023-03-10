clc;
clear all;
close all;
syms t

T=2*pi;
t0=-pi;
w=2*pi/T;
x=abs(t);

px=(1/T)*int(abs(x)^2,t0,t0+T);

k =-5:5;

a =(1/T)*int(x*exp(-j*k*w*t), t,t0,t0+T);
xx =sum(a.*exp(j*k*w*t));

pa=(abs(a)).^2;

percen=sum(pa/px)

eval(percen)