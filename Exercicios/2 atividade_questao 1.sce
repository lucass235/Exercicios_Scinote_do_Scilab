//1 questao.
// Sistemas de equações 5X5.
//coeficientes da matriz [4,0,1,-1,2;2,7,-1,1,3;-1,2,5,2,1;-2,1,2,3,1;1,-1,2,2,3].
//matriz da igualdade [6;-1;2;5;9].
// Método de Seidel.
clear
clc
A=evstr(x_dialog("Digite os valores dos coeficientes do sistema:",""));
b=evstr(x_dialog("Digite os valores matriz coluna das igualdades do sistema:",""));
e=evstr(x_dialog("Ddigite o erro máximo usado nas aproximações:",""));
x=[0;0;0;0;0];
erro=1;
n=0;
while(erro>e)
y=x;
x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)+A(1,4)*x(4)-A(1,5)*x(5))/A(1,1);
x(2)=(-b(2)-A(2,1)*x(1)+A(2,3)*x(3)-A(2,4)*x(4)-A(2,5)*x(5))/A(2,2);
x(3)=(b(3)+A(3,1)*x(1)-A(3,2)*x(2)+A(3,4)*x(4)-A(3,5)*x(5))/A(3,3);
x(4)=(b(4)+A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3)-A(4,5)*x(5))/A(4,4);
x(5)=(b(5)-A(5,1)*x(1)+A(5,2)*x(2)-A(5,3)*x(3)-A(5,4)*x(4))/A(5,5);
erro=max(abs(y-x))
n=n+1;
end
disp("Erro maximo",e,"Nº de iterações",n,"Solução",x,"Erro Aceito",erro,"Método de Seidel") 
