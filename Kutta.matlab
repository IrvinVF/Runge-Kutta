function f
fprintf("Ecuación diferencial con runge-Kutta :) ");
f=input(' Ingresa la ecuación diferencial: ','s');
x0=input('Ingresa x0 porfavor: ');
x1=input('Ingresa xfinal: ');
y0=input('Ahora, ingresa el valor de y: ');
n=input('Y por último ingresa el número de intervalos porfavor: ');
h=(x1-x0)/n;
xs=x0:h:x1;
fprintf('\n''´Pto x0 y(x1)');
for i=1:n
    Pto=i;
    x0=xs(i+1);
    x=x0;
    y=y0;
    k1=h*eval(f);
    x=xs(i);
    y=y0+k1;
    k2=h*eval(f);
    y0=y0+(k1+k2)/2;
    fprintf('\n%2.0f%10.6f%10.6f\n',Pto,x0,y0);
    
end
fprintf('\n El punto aproximado Y(x1) es= %8.6f\n',y0);
