function [K,l] = vzdalenosti(k,l,tresh)
A=zeros(size(k,(1)));
K=k;
for(radek=1:size(A,1))
 for(sloupec=1:size(A,2))
 if(radek>sloupec)
 A(radek,sloupec)=sqrt((k(radek,1)-k(sloupec,1))^2+(k(radek,2)-k(sloupec,2))^2);
 if(A(radek,sloupec)<tresh*mean([l(radek),l(sloupec)]))
    K(radek,:)=-1;
   
 end
 end
 end
end

pom=K(:,1);
l(pom==-1)=[];
K1=K(:,1);
K2=K(:,2);
K1(K1==-1)=[];
K2(K2==-1)=[];
K=[K1,K2];
end




