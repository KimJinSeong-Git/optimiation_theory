clear; clc;

[x, y] = meshgrid(linspace(-2, 2, 400), linspace(-2, 2, 400));
f_x = -y -2*x.*y + x.^2 + y.^2 -3*x.^2*y -2*x.^3 +2* x.^4;

contour(x, y, f_x, 20);
hold on;

plot(1, 1, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

xlabel('x1');
ylabel('x2');
title('P3. Grahpical Representation of Problem');

grid on;
hold off;