clc
clear all
close all
Fs = 1500;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
t=-3:3 ;
t1=abs(t)
sym X1
for i=1:length(t1)
    if t1 > T/2
        Xi=1
    else
        Xi=0
    end
    y=fft(Xi);
    plot(t,Xi)
end

xlabel('Time (t)')
ylabel('X(t)')        