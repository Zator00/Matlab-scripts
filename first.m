% counting prime numbers in given colletion
N = 1:100;
P = arrayfun(@pierwsze,N);

plot(N,P);
grid on;
xlabel("Zbior N liczb")
ylabel("Liczby pierwsze")

function ile = pierwsze(Z)
x = ones(1,Z);
x(1,1) = 0;
for i=2:Z
    if x(1,i) == 1
        for j=2*i:i:Z
            x(1,j) = 0;
        end
    end
end

ile = sum(x);

end