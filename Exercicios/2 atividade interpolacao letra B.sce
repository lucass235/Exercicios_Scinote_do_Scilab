// 2 questao letra b
// Interpolacao quadratica
// valores de x = [55;70;85;100;120]
// valores de y = [14.08;13.56;13.28;12.27;11.3]
// valor para x = 80.

x=evstr(x_dialog("Digite os valores de x:",""));
y=evstr(x_dialog("Digite os valores de y:",""));

X = poly(0,"X");

L1=((X-x(2))*(X-x(3))*(X-x(4))*(X-x(5)))/((x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4))*(x(1)-x(5)));

L2=((X-x(1))*(X-x(3))*(X-x(4))*(X-x(5)))/((x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4))*(x(2)-x(5)));

L3=((X-x(1))*(X-x(2))*(X-x(4))*(X-x(5)))/((x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4))*(x(3)-x(5)));

L4=((X-x(1))*(X-x(2))*(X-x(3))*(X-x(5)))/((x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3))*(x(4)-x(5)));

L5=((X-x(1))*(X-x(2))*(X-x(3))*(X-x(4)))/((x(5)-x(1))*(x(5)-x(2))*(x(5)-x(3))*(x(5)-x(4)));

PL4=y(1)*L1+y(2)*L2+y(3)*L3+y(4)*L4+y(5)*L5

M1 = [x,horner(PL4,x)];
M2 = [x,y];
R = horner(PL4,80);

disp("Polinomio: ",PL4,"Verificacao: ",M1,M2,"Resultado com x = 5.5: ",R);
