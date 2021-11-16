//Integração numérica
clear
clc
r=1;
while(r==1);
funcprot(0);//Não exibe a mensagem de redefinição da função
deff("y=f(x)",x_dialog("Clique na caixa de texto digite a EQUAÇÃO (Ex: y=2+x^2). Depois Clique OK",""));
a=evstr(x_dialog("clique na caixa de texto e digite o LIMITE INFERIOR da integral. Depois clique Ok.",""));
b=evstr(x_dialog("clique na caixa de texto e digite o LIMITE SUPERIOR da integral. Depois clique OK ",""));
metodo=messagebox("Escolha o método","modal","question",["Regras dos Trapézios","Regras de Simpson","Cancelar"]);

if metodo==3 then
    r=2;
    else

if metodo==1 then
    n=evstr(x_dialog("clique na caixa de texto e digite a quantidade de partes em o intervalo da integral será dividido. Depois clique Ok.",""));
    n1=a:(b-a)/n:b;
    s=f(a)+f(b);
    for i=2:n;
        s=s+2*f(n1(i));
    end
Is=(b-a)*(f(a)+f(b))/2;//Regra simples dos trapézios
Ic=(b-a)*s/(2*n);//Regra compsta dos trapézios
IS=intg(a,b,f);
messagebox(msprintf(gettext("Regra Simples\nI=%f\n-------------------------\nRegra Composta:\nI=%f\n-------------------------\nCálculo do Scilab:\nI=%f"),Is,Ic,IS),"Regras dos Trapézios");
sleep(5000);
else
    
if metodo==2 then
    n=evstr(x_dialog("clique na caixa de texto e digite a quantidade de partes em o intervalo da integral será dividido. Depois clique Ok.",""));
    n1=a:(b-a)/n:b;
    s1=0;
    s2=0;
    s=f(a)+f(b);
    for i=2:2:n;
        s1=s1+4*f(n1(i));
    end
    for i=3:2:n
        s2=s2+2*f(n1(i));
    end
    Is=(b-a)*(f(a)+f(b)+4*f((a+b)/2))/6;
    Ic=(b-a)*(s+s1+s2)/(3*n);
    IS=intg(a,b,f);
messagebox(msprintf(gettext("Regra Simples\nI=%f\n-------------------------\nRegra Composta:\nI=%f\n-------------------------\nCálculo do Scilab:\nI=%f"),Is,Ic,IS),"Regras de Simpson");
sleep(5000);
else
    
end
end
end
op=messagebox("Você deseja calcular a integral de outra função?","modal","question",["SIM","NÃO"]);
if op==2 then
    r=2;
end
end
