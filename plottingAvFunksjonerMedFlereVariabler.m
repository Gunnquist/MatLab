f=@(x,y) (x+y)/((y.^2)-(2*y)+x)
n = 50
x = linspace(-10,10,n)
y = linspace(-10,10,n)
[x,y] = meshgrid(x,y)
mesh(x,y,f(x,y))