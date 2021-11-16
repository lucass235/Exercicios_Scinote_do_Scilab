// Sistenas de  equações 3X3
// Método de Jacobi
clear
clc
A=evstr(x_dialog("Clique na caixa de texto e digite os valores dos coeficientes do sistema. Depois clique Ok",""));
b=evstr(x_dialog("Clique na caixa de texto e digite os valores matriz coluna das igualdades do sistema. Depois clique Ok",""));
e=evstr(x_dialog("Clique na caixa de txto e digite o erro máximo usado nas aproximações. Depois clique Ok",""));
x=[0;0;0];
erro=100000;
n=0;
while(erro>e)
y(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
y(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
y(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
erro=max(abs(y-x))
x=y;
n=n+1;
end
disp(n,"Nº de iterações",x,"Solução",erro,"Erro","Método de Jacobi") 
