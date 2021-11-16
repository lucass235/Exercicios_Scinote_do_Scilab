// SISTEMAS DE EQUAÇÕES 3X3
// Método da eliminação de Gauss
clear
clc
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
