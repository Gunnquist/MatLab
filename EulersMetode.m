% Et script som kjører Eulers moteode

a = 0;
b = 2;
n = 1000;
h = (b-a)/n;
x =  linspace(a,b,n);
y = zeros(1,n);
 y(1) = 1;
 
 %This is where the magic happens 

 for i = 2:n
     y(i) = y(i-1) + (2-3*x(i-1)*y(i-1))*h ; 
 end 
 
 %plot og design
 
 hold on
 plot(x,y)
 grid on
 xlabel("x")
 ylabel("y")
 legend("funksjonens navn")
 
 
 
     
 