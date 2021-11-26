//1 Questão
// Trapézio composta: (b-a)*sum(FT)/(2*n)
// Simpson composta: (b-a)*sum(FS)/(3*n)
// x=[0;0.5;1;1.5;2];
//F=[0;1.1487;2.7183;4.9811;8.3890];
//n = (b-a)/0.5;
clear
clc
a=evstr(x_dialog("Digite o valor do limite inferior da funcao:",""));
b=evstr(x_dialog("Digite o valor do limite superior da funcao:",""));
F =evstr(x_dialog("Digite os valors da funcao:",""));
n= (b-a)/0.5;
FT = F;
FS = F;
FT(2:n)=2*FT(2:n); // f(x) da regra do trapezio
FS(2:2:n)=4*FS(2:2:n); // f(x) da regra de simpson
FS(3:2:n-1)=2*FS(3:2:n-1); // f(x) da regra de simpson

ICT = (b-a)*sum(FT)/(2*n);
ICS = (b-a)*sum(FS)/(3*n);

disp("Regra do trapézio", ICT,"Regra de Simpson", ICS);
