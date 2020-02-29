%% Eulers metode for difflikningen x'(t) = A*x(t) på intervallet a<t<b, med initialverdi x_0 og der A er en konstant 2x2-matrise
 % Med LSD-animasjon
a = -10;  %Endepunkter til tidsintervallet 
b = 10;
n = 100; %Antall noder
h = (b-a)/n; %tidssteg
A = [-2 -2.5; 10 -2]; %Matrisen 
x = zeros(n,2); % nx2-matrise der løsningen lagres 
x0 = [1 1]; % initialverdi
x(1,:) = x0; % legger initialverdien i løsningsmengden. x0 er den første raden i x 
I = eye(2);

for j = 0:1:2*pi
    x0 = [cos(j) sin(j)];
    x(1,:)=x0 ; 


for i = 1:n
    x(i+1,:) = x(i,:)' + h*(A*(x(i,:)'));
    %plot(x(i+1,1),x(i+1,2))
    plot(x(:,1),x(:,2))
    hold on;
    axis([-100 100 -100 100])
    pause(0.01)
end 
end
% alt for i = 1:n
%   x(i+1,:) = (I +h*A)*x(i,:)';
% end

%plot(x(:,1),x(:,2))
%figure(1); %henter frem et figurvindu
%clf; %clear figure