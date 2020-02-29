n = 50;
x = linspace(-9,9,n);
y = linspace(-9,9,n);
[X,Y] = meshgrid(x,y);
Z = 3*X + Y.^2 ;
figure(1); clf;
surf(X,Y,Z)