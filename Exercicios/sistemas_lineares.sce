//RESOLUÇÃO DE SISTEMAS-MÉTOD DIRETO E MÉTODOS DE GAUSS-JACOBI E GAUSS-SEIDEL
clear
clc
op2=messagebox("Você deseja ler algumas intruções básicas?","modal","question",["SIM","NÃO"]);
if op2==1 then
    messagebox(msprintf(gettext("* Este Script calcula a solução de sistemas de equações lineares com no máximo 6 variáveis.\n* Ao digitar uma matriz, separe cada valor da linha por vírgula ou por um espaço em branco e separe cada linha por ponto e vírgula.\n* Ao digitar números fracionários, use o ponto como separador de decimais.\n\n AGUARDE...")),"INSTRUÇÕES BÁSICAS");
    sleep(20000);
end
lambda=[];A=[];b=[];x1=[];x=[];
c=1;
while(c==1)  // while da convergência
op1=messagebox("Selecione o método que você deseja usar","modal","info",["Direto/Algébrico","Gauss-Jacobi","Gauss-Seidel","Cancelar"]);

if op1==4 then
    c=2
    else
//end

c1=0;

n=messagebox("Selecione a quantidade de variáveis do sistema","modal",["2","3","4","5","6"]);

                                                            //Começo n=2

if n==1 then
    n=n+1;
    
    //n=evstr(x_dialog("Clique na caixa de texto e digite a quantidade de incógnitas do sistema. Depois clique OK",""));
A=evstr(x_dialog("Clique na caixa de texto e digite a matriz dos coeficientes do sistema. Depois clique OK",""));
b=evstr(x_dialog("Clique na caixa de texto e digite a matriz coluna das constantes do sistema. Depois clique OK",""));

// GAUSS-JACOBI

if op1==2 then

E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));

    lambda(1)=abs(A(1,2))/abs(A(1,1));
    lambda(2)=abs(A(2,1))/abs(A(2,2));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n------------------------------------------------------------");
printf("\n  k             x1                x2                ERRO");
printf("\n------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1))/A(2,2);
        erro=max(abs(x1-x));
        printf("\n %2d          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-JACOBI!");
            sleep(4000)
           erro=0;
       end
         
    x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n------------------------------------------------------------");
printf("\n  k             x1                x2                ERRO");
printf("\n------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1))/A(2,2);
        erro=max(abs(x1-x));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),erro);
//    DI=max(x1-x);
//    erro=DI;
    x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nERRO= %f\nIterações= %d"),x1(1),x1(2),erro,k),"RESULTADO-MÉTODO DE GAUSS-JACOBI");
sleep(4000)
printf("\n------------------------------------------------------------"); 
end
    else
    
    //GAUSS-SEIDEL
    
        if op1==3 then
         
         E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));
//c=1;
//while(c==1)  // while da convergência
    lambda(1)=abs(A(1,2))/abs(A(1,1));
    lambda(2)=abs(A(2,1))/abs(A(2,2));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n------------------------------------------------------------");
printf("\n  k             x1                x2                ERRO");
printf("\n------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1))/A(2,2);
        erro=max(abs(x-x1));
        printf("\n %2d          %3.6f          %3.6f          %3.6f",k,x(1),x(2),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-SEIDEL!");
            sleep(4000)
           erro=0;
       end
         
    //x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n------------------------------------------------------------");
printf("\n  k             x1                x2                ERRO");
printf("\n------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1))/A(2,2);
        erro=max(abs(x-x1));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f",k,x(1),x(2),erro);
//    DI=max(x1-x);
//    erro=DI;
    //x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nERRO= %f\nIterações= %d"),x(1),x(2),erro,k),"RESULTADO POR GAUSS-SEIDEL");
sleep(4000)
printf("\n------------------------------------------------------------"); 
end
           
        
    else
        
     // MÉTODO ALGÉBRICO
     
        DET=det(A);
        if DET==0 then
            messagebox("Sistema Incompatível: A matriz dos coeficientes é singular");
            c=2;
        end
        
        
        C=[A,b];

        C(2,:)=C(1,:)*-C(2,1)/C(1,1)+C(2,:);
        disp(C,"   1ª equivalência");
        
        x2=C(2,3)/C(2,2);
        x1=(C(1,3)-C(1,2)*x2)/C(1,1);
        x=[x1;x2];
        printf("\n----------------");
        printf("\n    x1    x2");
        printf("\n----------------");
        disp(x');
        printf("----------------");
        
        
        XD=(A)\b;
        messagebox(msprintf(gettext("Método da Eliminação de Gauss:\nx1= %f\nx2= %f\n--------------------------------------\nSolução Scilab:\nx1= %f\nx2= %f"),x(1),x(2),XD(1),XD(2)),"RESULTADO-MÉTODO DIRETO");
        sleep(4000)
    end
    end

else
    
    
//else
    
                                                           //Começo do n=3
    
    if n==2 then
    n=n+1;

//n=evstr(x_dialog("Clique na caixa de texto e digite a quantidade de incógnitas do sistema. Depois clique OK",""));
A=evstr(x_dialog("Clique na caixa de texto e digite a matriz dos coeficientes do sistema. Depois clique OK",""));
b=evstr(x_dialog("Clique na caixa de texto e digite a matriz coluna das constantes do sistema. Depois clique OK",""));

// GAUSS-JACOBI

if op1==2 then

E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));

    lambda(1)=(abs(A(1,2))+abs(A(1,3)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2)))/abs(A(3,3));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3               ERRO");
printf("\n-----------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
        erro=max(abs(x1-x));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-JACOBI!");
            sleep(4000);
           erro=0;
       end
         
    x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3               ERRO");
printf("\n-----------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
        erro=max(abs(x1-x));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),erro);
//    DI=max(x1-x);
//    erro=DI;
    x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3=%f\nERRO= %f\nIterações= %d"),x1(1),x1(2),x1(3),erro,k),"RESULTADO-MÉTODO DE GAUSS-JACOBI");
sleep(4000)
printf("\n-----------------------------------------------------------------------------"); 
end
    else
    
    //GAUSS-SEIDEL
    
        if op1==3 then
         
         E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));
//c=1;
//while(c==1)  // while da convergência
    lambda(1)=(abs(A(1,2))+abs(A(1,3)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2)))/abs(A(3,3));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3               ERRO");
printf("\n-----------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
        erro=max(abs(x-x1));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-SEIDEL!");
            sleep(4000)
           erro=0;
       end
         
    //x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3               ERRO");
printf("\n-----------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3))/A(1,1);
        
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3))/A(2,2);
        
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2))/A(3,3);
        
        erro=max(abs(x-x1));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),erro);
//    DI=max(x1-x);
//    erro=DI;
    //x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3=%f\nERRO= %f\nIterações= %d"),x(1),x(2),x(3),erro,k),"RESULTADO POR GAUSS-SEIDEL");
sleep(4000)
printf("\n-----------------------------------------------------------------------------"); 
end
           
        
    else
        
     // MÉTODO ALGÉBRICO
        
        DET=det(A);
        if DET==0 then
            messagebox("Sistema Incompatível: A matriz dos coeficientes é singular");
            c=2;
        end
        
        
        C=[A,b];

        C(2,:)=C(1,:)*-C(2,1)/C(1,1)+C(2,:);
        disp(C,"   1ª Equivalência:");
        C(3,:)=C(1,:)*-C(3,1)/C(1,1)+C(3,:);
        disp(C,"   2ª Equivalência:");
        C(3,:)=C(2,:)*-C(3,2)/C(2,2)+C(3,:);
        disp(C,"   3ª Equivalência:");
        

        x3=C(3,4)/C(3,3);
        x2=(C(2,4)-C(2,3)*x3)/C(2,2);
        x1=(C(1,4)-C(1,3)*x3-C(1,2)*x2)/C(1,1);

        x=[x1;x2;x3]
        printf("\n-------------------------");
        printf("\n     x1      x2     x3");
        printf("\n-------------------------");
        disp(x');
        printf("-------------------------");
        
        
        XD=(A)\b;
        messagebox(msprintf(gettext("Método da Eliminação de Gauss:\nx1= %f\nx2= %f\nx3= %f\n--------------------------------------\nSolução Scilab:\nx1= %f\nx2= %f\nx3= %f"),x(1),x(2),x(3),XD(1),XD(2),XD(3)),"RESULTADO-MÉTODO DIRETO");
        sleep(4000)
    end
    end

else
    
                                                    //Começo do n=4
    
    if n==3 then
    n=n+1;


A=evstr(x_dialog("Clique na caixa de texto e digite a matriz dos coeficientes do sistema. Depois clique OK",""));
b=evstr(x_dialog("Clique na caixa de texto e digite a matriz coluna das constantes do sistema. Depois clique OK",""));

// GAUSS-JACOBI

if op1==2 then

E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));

    lambda(1)=(abs(A(1,2))+abs(A(1,3))+abs(A(1,4)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3))+abs(A(2,4)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2))+abs(A(3,4)))/abs(A(3,3));
    lambda(4)=(abs(A(4,1))+abs(A(4,2))+abs(A(4,3)))/abs(A(4,4));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n---------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4               ERRO");
printf("\n---------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4))/A(3,3);
        x1(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3))/A(4,4);
        erro=max(abs(x1-x));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),x1(4),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-JACOBI!");
            sleep(4000)
           erro=0;
       end
         
    x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n---------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4                ERRO");
printf("\n---------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4))/A(3,3);
        x1(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3))/A(4,4);
        erro=max(abs(x1-x));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),x1(4),erro);
//    DI=max(x1-x);
//    erro=DI;
    x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3=%f\nx4= %f\nERRO= %f\nIterações= %d"),x1(1),x1(2),x1(3),x(4),erro,k),"RESULTADO POR GAUSS-JACOBI");
sleep(4000)
printf("\n---------------------------------------------------------------------------------------------");
end
    else
    
    //GAUSS-SEIDEL
    
        if op1==3 then
         
         E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));
//c=1;
//while(c==1)  // while da convergência
    lambda(1)=(abs(A(1,2))+abs(A(1,3))+abs(A(1,4)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3))+abs(A(2,4)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2))+abs(A(3,4)))/abs(A(3,3));
    lambda(4)=(abs(A(4,1))+abs(A(4,2))+abs(A(4,3)))/abs(A(4,4));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n---------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                 x4               ERRO");
printf("\n---------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4))/A(2,2);
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4))/A(3,3);
        x(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3))/A(4,4);
        erro=max(abs(x-x1));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),x(4),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-SEIDEL!");
            sleep(4000)
           erro=0;
       end
         
    //x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n---------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4                ERRO");
printf("\n---------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4))/A(2,2);
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4))/A(3,3);
        x(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3))/A(4,4);
        
        erro=max(abs(x-x1));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),x(4),erro);
//    DI=max(x1-x);
//    erro=DI;
    //x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3= %f\nx4= %f\nERRO= %f\nIterações= %d"),x(1),x(2),x(3),x(4),erro,k),"RESULTADO POR GAUSS-SEIDEL");
sleep(4000)
printf("\n---------------------------------------------------------------------------------------------"); 
end
           
        
    else
        
     // MÉTODO ALGÉBRICO
        
        DET=det(A);
        if DET==0 then
            messagebox("Sistema Incompatível: A matriz dos coeficientes é singular");
            c=2;
        end
        
        
        C=[A,b];

        C(2,:)=C(1,:)*-C(2,1)/C(1,1)+C(2,:);
        disp(C,"   1ª Equivalência:");
        C(3,:)=C(1,:)*-C(3,1)/C(1,1)+C(3,:);
        disp(C,"   2ª Equivalência:");
        C(4,:)=C(1,:)*-C(4,1)/C(1,1)+C(4,:);
        disp(C,"   3ª Equivalência:");
        C(3,:)=C(2,:)*-C(3,2)/C(2,2)+C(3,:);
        disp(C,"   4ª Equivalência:");
        C(4,:)=C(2,:)*-C(4,2)/C(2,2)+C(4,:);
        disp(C,"   5ª Equivalência:");
        C(4,:)=C(3,:)*-C(4,3)/C(3,3)+C(4,:);
        disp(C,"   6ª Equivalência:");

        x4=C(4,5)/C(4,4);
        x3=(C(3,5)-C(3,4)*x4)/C(3,3);
        x2=(C(2,5)-C(2,4)*x4-C(2,3)*x3)/C(2,2);
        x1=(C(1,5)-C(1,4)*x4-C(1,3)*x3-C(1,2)*x2)/C(1,1);

        x=[x1;x2;x3;x4]
        
        printf("\n-----------------------------------------------------");
        printf("\n        x1           x2           x3           x4");
        printf("\n-----------------------------------------------------");
        disp(x');
        printf("-----------------------------------------------------");
        
        
        XD=(A)\b;
        messagebox(msprintf(gettext("Método da Eliminação de Gauss:\nx1= %f\nx2= %f\nx3= %f\nx4= %f\n--------------------------------------\nSolução Scilab:\nx1= %f\nx2= %f\nx3= %f\nx4= %f"),x(1),x(2),x(3),x(4),XD(1),XD(2),XD(3),XD(4)),"RESULTADO-MÉTODO DIRETO");
        sleep(4000)
    end
    end
else

                                                            //Começo do n=5
    
    if n==4 then
    n=n+1;


A=evstr(x_dialog("Clique na caixa de texto e digite a matriz dos coeficientes do sistema. Depois clique OK",""));
b=evstr(x_dialog("Clique na caixa de texto e digite a matriz coluna das constantes do sistema. Depois clique OK",""));

// GAUSS-JACOBI

if op1==2 then

E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));

    lambda(1)=(abs(A(1,2))+abs(A(1,3))+abs(A(1,4))+abs(A(1,5)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3))+abs(A(2,4))+abs(A(2,5)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2))+abs(A(3,4))+abs(A(3,5)))/abs(A(3,3));
    lambda(4)=(abs(A(4,1))+abs(A(4,2))+abs(A(4,3))+abs(A(4,5)))/abs(A(4,4));
    lambda(5)=(abs(A(5,1))+abs(A(5,2))+abs(A(5,3))+abs(A(5,4)))/abs(A(5,5));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4                x5                ERRO");
printf("\n-----------------------------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4)-A(1,5)*x(5))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4)-A(2,5)*x(5))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4)-A(3,5)*x(5))/A(3,3);
        x1(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3)-A(4,5)*x(5))/A(4,4);
        x1(5)=(b(5)-A(5,1)*x(1)-A(5,2)*x(2)-A(5,3)*x(3)-A(5,4)*x(4))/A(5,5);
        erro=max(abs(x1-x));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),x1(4),x1(5),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-JACOBI!");
            sleep(4000)
           erro=0;
       end
         
    x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4                x5                ERRO");
printf("\n-----------------------------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4)-A(1,5)*x(5))/A(1,1);
        x1(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4)-A(2,5)*x(5))/A(2,2);
        x1(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4)-A(3,5)*x(5))/A(3,3);
        x1(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3)-A(4,5)*x(5))/A(4,4);
        x1(5)=(b(5)-A(5,1)*x(1)-A(5,2)*x(2)-A(5,3)*x(3)-A(5,4)*x(4))/A(5,5);
        erro=max(abs(x1-x));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x1(1),x1(2),x1(3),x1(4),x1(5),erro);
//    DI=max(x1-x);
//    erro=DI;
    x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3=%f\nx4= %f\nx5= %f\nERRO= %f\nIterações= %d"),x1(1),x1(2),x1(3),x(4),x(5),erro,k),"RESULTADO POR GAUSS-JACOBI");
sleep(4000)
printf("\n-----------------------------------------------------------------------------------------------------------------");
end
    else
    
    //GAUSS-SEIDEL
    
        if op1==3 then
         
         E=evstr(x_dialog("Clique na caixa de texto e digite o erro máximo para a aproximação dos valores das incógnitas. Depois clique OK",""));
//c=1;
//while(c==1)  // while da convergência
    lambda(1)=(abs(A(1,2))+abs(A(1,3))+abs(A(1,4))+abs(A(1,5)))/abs(A(1,1));
    lambda(2)=(abs(A(2,1))+abs(A(2,3))+abs(A(2,4))+abs(A(2,5)))/abs(A(2,2));
    lambda(3)=(abs(A(3,1))+abs(A(3,2))+abs(A(3,4))+abs(A(3,5)))/abs(A(3,3));
    lambda(4)=(abs(A(4,1))+abs(A(4,2))+abs(A(4,3))+abs(A(4,5)))/abs(A(4,4));
    lambda(5)=(abs(A(5,1))+abs(A(5,2))+abs(A(5,3))+abs(A(5,4)))/abs(A(5,5));
    lambda1=lambda(find(lambda>=1));
    if lambda1<>[] then
        c1=messagebox("Sistema não obedece às condições de convergência. Deseja Continuar?","modal","question",["SIM","NÃO"]);
            if c1==1 then
              
erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                 x4                x5               ERRO");
printf("\n-----------------------------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4)-A(1,5)*x(5))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4)-A(2,5)*x(5))/A(2,2);
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4)-A(3,5)*x(5))/A(3,3);
        x(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3)-A(4,5)*x(5))/A(4,4);
        x(5)=(b(5)-A(5,1)*x(1)-A(5,2)*x(2)-A(5,3)*x(3)-A(5,4)*x(4))/A(5,5);
        erro=max(abs(x-x1));
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),x(4),x(5),erro);
        if k==100 then
            messagebox("Não Há Convergência pelo método de GAUSS-SEIDEL!");
            sleep(4000)
           erro=0;
       end
         
    //x=x1;  
    
end  //fim do while das iterações
else
end
else
  erro=E+0.5;
k=0;
x=zeros(n,1);
printf("\n-----------------------------------------------------------------------------------------------------------------");
printf("\n  k             x1                x2                x3                x4               x5                 ERRO");
printf("\n-----------------------------------------------------------------------------------------------------------------");
while(erro>E)  // while das iterações
        k=k+1;
        x1=x;
        x(1)=(b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4)-A(1,5)*x(5))/A(1,1);
        x(2)=(b(2)-A(2,1)*x(1)-A(2,3)*x(3)-A(2,4)*x(4)-A(2,5)*x(5))/A(2,2);
        x(3)=(b(3)-A(3,1)*x(1)-A(3,2)*x(2)-A(3,4)*x(4)-A(3,5)*x(5))/A(3,3);
        x(4)=(b(4)-A(4,1)*x(1)-A(4,2)*x(2)-A(4,3)*x(3)-A(4,5)*x(5))/A(4,4);
        x(5)=(b(5)-A(5,1)*x(1)-A(5,2)*x(2)-A(5,3)*x(3)-A(5,4)*x(4))/A(5,5);
        
        erro=max(abs(x-x1));
    //    disp(DI,x1)
        printf("\n %2d          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f          %3.6f",k,x(1),x(2),x(3),x(4),x(5),erro);
//    DI=max(x1-x);
//    erro=DI;
    //x=x1;  
    
end  //fim do while das iterações
end
if k<100 then 
messagebox(msprintf(gettext("x1= %f\nx2= %f\nx3= %f\nx4= %f\nx5= %f\nERRO= %f\nIterações= %d"),x(1),x(2),x(3),x(4),x(5),erro,k),"RESULTADO POR GAUSS-SEIDEL");
sleep(4000)
printf("\n-----------------------------------------------------------------------------------------------------------------"); 
end
           
        
    else
        
     // MÉTODO ALGÉBRICO
        
        DET=det(A);
        if DET==0 then
            messagebox("Sistema Incompatível: A matriz dos coeficientes é singular");
            c=2;
        end
        
        
        C=[A,b];

        C(2,:)=C(1,:)*-C(2,1)/C(1,1)+C(2,:);
        disp(C,"   1ª Equivalência:");
        C(3,:)=C(1,:)*-C(3,1)/C(1,1)+C(3,:);
        disp(C,"   2ª Equivalência:");
        C(4,:)=C(1,:)*-C(4,1)/C(1,1)+C(4,:);
        disp(C,"   3ª Equivalência:");
        C(5,:)=C(1,:)*-C(5,1)/C(1,1)+C(5,:);
        disp(C,"   4ª Equivalência:");
        
        C(3,:)=C(2,:)*-C(3,2)/C(2,2)+C(3,:);
        disp(C,"   5ª Equivalência:");
        C(4,:)=C(2,:)*-C(4,2)/C(2,2)+C(4,:);
        disp(C,"   6ª Equivalência:");
        C(5,:)=C(2,:)*-C(5,2)/C(2,2)+C(5,:);
        disp(C,"   7ª Equivalência:");
        
        C(4,:)=C(3,:)*-C(4,3)/C(3,3)+C(4,:);
        disp(C,"   8ª Equivalência:");
        C(5,:)=C(3,:)*-C(5,3)/C(3,3)+C(5,:);
        disp(C,"   9ª Equivalência:");
        
        C(5,:)=C(4,:)*-C(5,4)/C(4,4)+C(5,:);
        disp(C,"   10ª Equivalência:");

        x5=C(5,6)/C(5,5);
        x4=(C(4,6)-C(4,5)*x5)/C(4,4);
        x3=(C(3,6)-C(3,5)*x5-C(3,4)*x4)/C(3,3);
        x2=(C(2,6)-C(2,5)*x5-C(2,4)*x4-C(2,3)*x3)/C(2,2);
        x1=(C(1,6)-C(1,5)*x5-C(1,4)*x4-C(1,3)*x3-C(1,2)*x2)/C(1,1);

        x=[x1;x2;x3;x4;x5]
        
        printf("\n-------------------------------------------------------------------");
        printf("\n        x1           x2          x3           x4           x5");
        printf("\n-------------------------------------------------------------------");
        disp(x');
        printf("-------------------------------------------------------------------");
        
        
        XD=(A)\b;
        messagebox(msprintf(gettext("Método da Eliminação de Gauss:\nx1= %f\nx2= %f\nx3= %f\nx4= %f\nx5= %f\n--------------------------------------\nSolução Scilab:\nx1= %f\nx2= %f\nx3= %f\nx4= %f\nx5= %f"),x(1),x(2),x(3),x(4),x(5),XD(1),XD(2),XD(3),XD(4),XD(5)),"RESULTADO-MÉTODO DIRETO");
        sleep(4000)
    end
    end




        end //fim do n=2
        end //fim do n=3
        end //fim do n=4
        end // fim do n=5


c=messagebox("Deseja resolver outro sistema?","modal","question",["SIM","NÃO"]);
end // fim do while da repetição 

end//fim do cancelamento   
