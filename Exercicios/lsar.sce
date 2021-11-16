// sistema de equacoes 3x3
// Metodo de eliminacao de Gauss
clear
clc
A=[3 -1,1;2 6 3;4 1 7];
A=evstr(x_dialog(" Clique na caixa de texto e digite os coeficientes das variaveis do sistema",""));
b=[5;6;1];
b=evstr(x_dialog(" Clique na caixa de texto e digite os valores da matriz coluna das igualdades do sistema",""));
C=[A,b];
C(2,:)=C(1,:)*-C(2,1)+C(2,:)*C(1,1);
C(3,:)=C(1,:)*-C(3,1)+C(3,:)*C(1,1);
C(3,:)=C(2,:)*-C(3,2)+C(3,:)*C(2,2);
disp(C, " Matriz triangular superior")
x(3)=C(3,4)/C(3,3);
x(2)=(C(2,4)-C(2,3)*x(3))/C(2,2);
x(1)=(C(1,4)-C(1,2)*x(2)-C(1,3)*x(3))/C(1,1);
disp(x,"Solucao do sistema")
