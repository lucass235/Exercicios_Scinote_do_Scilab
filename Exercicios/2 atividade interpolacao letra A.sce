// 2 questao letra a
// Interpolacao linear
// valores de x = [70;85]
// valores de y = [13.56;13.28]
// valor para x = 80.

x=evstr(x_dialog("Digite os valores de x:",""));
y=evstr(x_dialog("Digite os valores de y:",""));

X = poly(0,"X");

L1=(X-x(2))/(x(1)-x(2));

L2=(X-x(1))/(x(2)-x(1));

PL1=y(1)*L1+y(2)*L2

M1 = [x,horner(PL1,x)];
M2 = [x,y];
R = horner(PL1,80);

disp("Polinomio: ",PL1,"Verificacao: ",M1,M2,"Resultado com x = 80: ",R);
