// 1 questao interpolacao letra a.
// interpolacao de Lagrange.
// valores de x = [0;2;4;6;8;10].
// valores de y = [0;0.5;4.5;7;9;10].
// valor de x = 5.5 em calculo I.
x=evstr(x_dialog("Digite os valores de x:",""));
y=evstr(x_dialog("Digite os valores de y:",""));

X = poly(0,"X");

L1=((X-x(2))*(X-x(3))*(X-x(4))*(X-x(5))*(X-x(6)))/((x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4))*(x(1)-x(5))*(x(1)-x(6)));

L2=((X-x(1))*(X-x(3))*(X-x(4))*(X-x(5))*(X-x(6)))/((x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4))*(x(2)-x(5))*(x(2)-x(6)));

L3=((X-x(1))*(X-x(2))*(X-x(4))*(X-x(5))*(X-x(6)))/((x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4))*(x(3)-x(5))*(x(3)-x(6)));

L4=((X-x(1))*(X-x(2))*(X-x(3))*(X-x(5))*(X-x(6)))/((x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3))*(x(4)-x(5))*(x(4)-x(6)));

L5=((X-x(1))*(X-x(2))*(X-x(3))*(X-x(4))*(X-x(6)))/((x(5)-x(1))*(x(5)-x(2))*(x(5)-x(3))*(x(5)-x(4))*(x(5)-x(6)));

L6=((X-x(1))*(X-x(2))*(X-x(3))*(X-x(4))*(X-x(5)))/((x(6)-x(1))*(x(6)-x(2))*(x(6)-x(3))*(x(6)-x(4))*(x(6)-x(5)));

PL5 = y(1)*L1+y(2)*L2+y(3)*L3+y(4)*L4+y(5)*L5+y(6)*L6;

M1 = [x,horner(PL5,x)];
M2 = [x,y];
R = horner(PL5,5.5);

disp("Polinomio: ",PL5,"Verificacao: ",M1,M2,"Resultado com x = 5.5: ",R);
