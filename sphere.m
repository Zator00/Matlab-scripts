%Showing sphere in pd dimensions p[0.5, 1, 2, 3]
clc
clear all

p=3;

N = 10^4;

x = [rand(N,1)*2-1 rand(N,1)];
x(((abs(x(:,1).^p)+abs(x(:,2).^p)).^(1/p))>1,:)=[];
plot(x(:,1),x(:,2),'.');
hold on;
plot(x(:,1),-x(:,2),'.');