//3 questao.
// Sistemas de equações 2X2.
//coeficientes da matriz [5,2;-1,1;].
//matriz da igualdade [1.500;750].
// Método de Seidel.
clear
clc
A=evstr(x_dialog("Digite os valores dos coeficientes do sistema:",""));
b=evstr(x_dialog("Digite os valores matriz coluna das igualdades do sistema:",""));
e=evstr(x_dialog("Ddigite o erro máximo usado nas aproximações:",""));
x=[0;0];
erro=1;
n=0;
while(erro>e)
y=x;
x(1)=(b(1)-A(1,2)*x(2))/A(1,1);
x(2)=(b(2)+A(1,1)*x(1))/A(2,2);
erro=max(abs(y-x))
n=n+1;
end
disp("Erro maximo",e,"Nº de iterações",n,"Solução",x,"Erro Aceito",erro,"Método de Seidel") 
