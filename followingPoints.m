clc;
clear all;

% ax ay; bx by; cx cy; dx dy
x = [0,1;1,1;1,0;0,0];

%liczba kroków (inaczej nassz czas)
steps = 200;

%macierz zawierająca informacje o prędkości poszczególnych punktów
%oraz liczbe, za którym punktem ma podążać
v = [0.04, 2; 0.01, 3; 0.04, 4; 0.02, 1];


for i=1:steps
    for j=1:4

        %d_A_x = randn(1,1)*0.01;
        %d_A_y = randn(1,1)*0.01;

        x_x = x(v(j,2),1)-x(j,1);%+;d_A_x;
        x_y = x(v(j,2),2)-x(j,2);%+d_A_y;

        dist = abs(x_x) + abs(x_y);
        theta=atan2(x_y,x_x);

        x(j,1) = x(j,1) + v(j,1) * cos(theta);
        x(j,2) = x(j,2) + v(j,1) * sin(theta);

        scatter(x_x, x_y); %rysowanie wykresu
        hold on;
    end
end