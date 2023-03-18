% bifurcation (need some time to show [if you want, you can change step in k on 0.01])
for k = 0.1:0.001:4
alpha = k;

for j=0:1:10

x_0 = rand();
iteracje = 100;
x_n = alpha*x_0*(1-x_0);
    for i=1:1:iteracje
     x_n = alpha*x_n*(1-x_n);

    end
     plot(alpha,x_n,'.');
     hold on;
end
end