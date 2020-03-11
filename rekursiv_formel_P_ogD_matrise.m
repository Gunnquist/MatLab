%% enkel prog for rekursiv formel x(n) = Ax(n-1)
n = 100 ;
A = [1.85 -0.10; 9.00 -0.05];
x_0 = [10 12]' ;
x = zeros(2,n+1) ;
x(:,1)= x_0 ;

for i = 1:n 
    x(:,i+1)= A*x(:,i);
end
disp(x)

eig(A)