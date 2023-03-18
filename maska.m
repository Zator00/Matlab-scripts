% mask of 1 in given R and N
clear all
N = 5;
R = 1;
A(N,N) = zeros;

x = ceil(N/2);
y = ceil(N/2);

for i=1:N
    for j=1:N
        line = sqrt((y-j)^2+(x-i)^2);
        if line<=R
            A(i,j) = 1;
        end
    end
end

disp(A);