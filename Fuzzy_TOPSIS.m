%Matriz de danos os 0 e 1 representão o que seria cada linha, tipo 0 que
%quanto mnos daquilo é melhor e 1 quanto mais daquilo melhor.
En =[
    1 1 1 1 1 1
    91.25 87.25 94.5 93.75 89 92.75
    87.75 93.25 88.75 90.75 90.5 94
    84.5 92.75 93.5 96 91.5 97.5
    95.5 91 92.75 92.5 93.5 93
];   
percent=0.1;
Vpesomax=[100 100 100 100 100 100 100 100];
%Para generalizar foi verificado o tamanho da matriz
size(En);
lin = ans(1,1);
col = ans(1,2);
Gera=[];
for j=1:col;
    for i=1:(lin-1);
        Teste(i,j)=En((i+1),j);
    end
end
S=sum(Teste);
%para tirar os 0 1 uns para não interferirem no resultado
A=[0];
M=[0];
B=[0];
for j=1:col;
    for i=1:(lin-1);
        Gera(i,j)= Teste(i,j)/Vpesomax(j);
    end;
end;
for j=1:col;
    for i=1:(lin-1);
		A(i,j)=(Gera(i,j)) - percent*(Gera(i,j));
        D(i,j)=(Gera(i,j)) - ((percent)/2)*(Gera(i,j));
        M(i,j)=(Gera(i,j));
        E(i,j)=(Gera(i,j)) + ((percent)/2)*(Gera(i,j));
		B(i,j)=(Gera(i,j)) + percent*(Gera(i,j));
		if(B(i,j)>1)
		B(i,j)=1;
        end
        if(E(i,j)>1)
		E(i,j)=1;
		end
    end
    end

  %achando os pesos
%Achando as distancias
PSA=sort(A);
PSD=sort(D);
PSM=sort(M);
PSE=sort(E);
PSB=sort(B);

for j=1:col;
     if (En(1,j)==1)
        AmA(1,j)= PSA(1,j);
        AmA(2,j)= PSA((lin-1),j);
        AmD(1,j)= PSD(1,j);
        AmD(2,j)= PSD((lin-1),j);
		AmM(1,j)= PSM(1,j);
        AmM(2,j)= PSM((lin-1),j);
        AmE(1,j)= PSE(1,j);
        AmE(2,j)= PSE((lin-1),j);
		AmB(1,j)= PSB(1,j);
        AmB(2,j)= PSB((lin-1),j);
    else
        AmA(2,j)= PSA(1,j);
        AmA(1,j)= PSA((lin-1),j);
        AmD(2,j)= PSD(1,j);
        AmD(1,j)= PSD((lin-1),j);
		AmM(2,j)= PSM(1,j);
        AmM(1,j)= PSM((lin-1),j);
        AmE(2,j)= PSE(1,j);
        AmE(1,j)= PSE((lin-1),j);
		AmB(2,j)= PSB(1,j);
        AmB(1,j)= PSB((lin-1),j);
     end
end
s1=0;
s2=0;
VM=[];
for i=1:(lin-1);
   for j=1:col;
     s1= s1 + (1/4)*(((AmA(2,j)-A(i,j))^2) + ((AmD(2,j)-D(i,j))^2) + ((AmE(2,j)-E(i,j))^2) + ((AmB(2,j)-B(i,j))^2));
     s2= s2 + (1/4)*(((AmA(1,j)-A(i,j))^2) + ((AmD(1,j)-D(i,j))^2) + ((AmE(1,j)-E(i,j))^2) + ((AmB(1,j)-B(i,j))^2));
   end
   VM(i,1)=sqrt(s1);
   VM(i,2)=sqrt(s2);
   s1=0;
   s2=0;
end
%terminando a matriz de proximidade
Vector1=[];
Vector2=[];
for i=1:(lin-1);
        VM(i,3)=VM(i,2)/(VM(i,1)+VM(i,2));
		Vector1(i)= i;
		Vector2(i)= VM(i,3);
end

bar(Vector1,Vector2)

