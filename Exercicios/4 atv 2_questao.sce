//2 Questção Letra a e b;
// Regra dos trapézios;
// Regra de Simpson;
// Trapézio composta: (b-a)*sum(FT)/(2*n)
// Simpson composta: (b-a)*sum(FS)/(3*n)
//funcao exp(-x^2/2)/sqrt(2*%pi)
//n = 6
clc
funcprot(0);//Não exibe a mensagem de redefinição da função
deff("y=f(x)",x_dialog("Digite a funcao OBS-> comece com (y=funcao) : ",""));
a=evstr(x_dialog("Digite o valor do limite inferior da funcao:",""));
b=evstr(x_dialog("Digite o valor do limite superior da funcao:",""));
n=evstr(x_dialog("Digite a quantidade de partes em que intervalo da integral será dividido: ",""));
h = (b-a)/n;
x=a:h:b
FT=f(x);
FS = f(x);
FT(2:n)=2*FT(2:n); // f(x) da regra do trapezio
FS(2:2:n)=4*FS(2:2:n); // f(x) da regra de simpson
FS(3:2:n-1)=2*FS(3:2:n-1); // f(x) da regra de simpson

ICT=(b-a)*sum(FT)/(2*n);
ICS = (b-a)*sum(FS)/(3*n);
IS = intg(a,b,f);

disp("Regra do trapézio", ICT,"Regra de Simpson", ICS,"Scilab",IS);
