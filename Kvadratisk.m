%% Et script som plotter kjeglesnitt av hyperpler, sirkler og elipser, og egentlig alle funksjoner av flere variabler. Man m� immidlertid forestille seg kjeglesnittet via figuren, da scriptet plotter kjeglesnittet som tredimensjonale sk�ler. Alts� plotter den n� overflaten til funksjonene 
%plotter kjeglesnittet til en hyperbel akk n�, trenger bare skrive om Z 
n = 50;
x  = linspace(-10,10,n);
y = linspace(-10,10,n);
[X,Y] = meshgrid(x,y) ; 
Z = (x+y)/((y.^2)-(2*y)+x);
figure(1); clf;
surf(X,Y,Z)
% axis equal % denne fucker plotten noen ganger 