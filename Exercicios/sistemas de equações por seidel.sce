//2 questao.
// Sistemas de equações 3X3.
//coeficientes da matriz [4,2,1;-1,2,0;2,1,4].
//matriz da igualdade [11;3;16].
// Método de Seidel.
clear
clc
A=evstr(x_dialog("Digite os valores dos coeficientes do sistema:",""));
b=evstr(x_dialog("Digite os valores matriz coluna das igualdades do sistema:",""));
e=evstr(x_dialog("Ddigite o erro máximo usado nas aproximações:",""));
x=[0;0;0];
erro=1;
n=0;
while(erro>e)
y=x;
x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
erro=max(abs(y-x))
n=n+1;
end
disp("Nº de iterações",n,"Solução",x,"Erro",erro,"Método de Seidel") 
