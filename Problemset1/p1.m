clear; clc;

[x, y] = meshgrid(linspace(-2, 2, 400), linspace(-2, 2, 400));
f_x = (x.^2 - y.^2).^4 + 8*x.*y - x + y + 3;
g_x = x.^4 - 2*y.*x.^2 + y.^2 + x.^2 - 2*x;

contour(x, y, f_x, 20);
hold on;
contour(x, y, g_x, [0, 0], 'r');

xlabel('x1');
ylabel('x2');
title('P1. Grahpical Representation of Problem');

grid on;
hold off;