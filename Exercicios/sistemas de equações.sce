// Sistemas de equações 3X3
// Métodos: Eliminação de Gauss, Jacobi e Sedel
clear
clc
op=messagebox("Escolha o método desejado","modal","info",["Eliminação de Gauss","Jacobi","Seidel"]);

if op==1 then
    A=evstr(x_dialog("Clique na caixa de texto e digite os coeficientes das variáveis do sistema",""));
b=evstr(x_dialog("Clique na caixa de texto e digite os valores da matriz coluna das igualdades do sistema",""));
C=[A,b];
C(2,:)=C(1,:)*-C(2,1)+C(2,:)*C(1,1);
C(3,:)=C(1,:)*-C(3,1)+C(3,:)*C(1,1);
C(3,:)=C(2,:)*-C(3,2)+C(3,:)*C(2,2);
disp(C,"Matriz triangular superior")
x(3)=C(3,4)/C(3,3);
x(2)=(C(2,4)-C(2,3)*x(3))/C(2,2);
x(1)=(C(1,4)-C(1,2)*x(2)-C(1,3)*x(3))/C(1,1);
disp(x,"Solução do Sistema")

else
    if op==2,then
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
erro=max(abs(y-x));
x=y;
n=n+1;
end
disp(n,"Nº de iterações",x,"Solução",erro,"Erro","Método de Jacobi")
    else
        A=evstr(x_dialog("Clique na caixa de texto e digite os valores dos coeficientes do sistema. Depois clique Ok",""));
b=evstr(x_dialog("Clique na caixa de texto e digite os valores matriz coluna das igualdades do sistema. Depois clique Ok",""));
e=evstr(x_dialog("Clique na caixa de txto e digite o erro máximo usado nas aproximações. Depois clique Ok",""));
x=[0;0;0];
erro=100000;
n=0;
while(erro>e)
y=x;
x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
erro=max(abs(y-x));
n=n+1;
end
disp(n,"Nº de iterações",x,"Solução",erro,"Erro","Método de Seidel") 

    end
end
