% An approximation of pi with the error shown
clc
clear all

N = 10^3;
counterO = 0;
counterK = 0;
for i=0:N
    x=(rand*2)-1;
    y = (rand*2)-1;
    okrag = 1;
    if (x^2+y^2<okrag)
        counterO = counterO + 1;
    end
end
wynik = (4*counterO)/N;
disp("Przyblizenie liczby pi:");
disp(wynik);
disp("Blad oszacowania:");
disp(abs(pi-wynik))
