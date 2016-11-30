%imi fixez axa timpului pentru a vizualiza doar o perioada, cu rezolutia
%2ms
P=40;
t=0:0.002:40;
M=zeros(1,length(t));
for i=1:1:length(t)
for n=0:1:500
    %imi impart functia pe ramuri pentru cazul in care semnalul este
    %crescator, cel in care este descrescator si cel in care e 0
if (t(i)>=n*P & t(i)<n*P+4)
M(i)=t(i)/4-n*10;
elseif (t(i)>=n*P+4 & t(i)<n*P+8)
M(i)=-t(i)/4+2+n*10;
elseif (t(i)>=n*P+8 & t(i)<(n+1)*P)
M(i)=0;
end
end
end
e=2.71828;
i=sqrt(-1);
%fixam axa timpului cu o rezolutie de 2ms, fiind o matrice transpusa (cu 1 coloana, pentru a putea efectua inmultirile necesare)
t=(0:0.002:40).';
%alegem numarul de coeficienti 50
for N=50

  k=(-N:1:+N);

  %calculez fiecare coeficient al seriei Fourier complexe pentru k de la
  %-50 la 50, luand in considerare si cazul k=0, unde stim ca C(0)=0.1
  zero=(k==0);
  C=(0.5*e.^(-i.*k*pi/5)-0.25-0.25*e.^(-2*i.*k*pi/5))./k.^2;
  C(zero)=0.1;

  % insumam termenii:
  % termenul k al sumei devine coloana k a unei matrice, pe ale carei coloane le insumam la sfarsit 
  x=sum(repmat(C,length(t),1).*exp(i.*repmat(k,length(t),1).* 2*pi/P.*repmat(t,1,length(k))),2);

end
h=figure;
set(h,'name','N=50 pentru o perioada','numbertitle','off')
plot(t,abs(x),'r', 'DisplayName', 'reconstruit'),grid
hold on
plot(t,M,'b','DisplayName','initial'),grid
hold off
legend('show')


%observam ca, intrucat avem un numar mare de coeficienti (50) in semnalul
%reconstruit, diferenta nu este vizibila; facem acelasi lucru pentru N=10
%coeficienti
%imi fixez axa timpului pentru a vizualiza doar o perioada, cu rezolutia
%2ms
P=40;
t=0:0.002:40;
M=zeros(1,length(t));
for i=1:1:length(t)
for n=0:1:500
    %imi impart functia pe ramuri pentru cazul in care semnalul este
    %crescator, cel in care este descrescator si cel in care e 0
if (t(i)>=n*P & t(i)<n*P+4)
M(i)=t(i)/4-n*10;
elseif (t(i)>=n*P+4 & t(i)<n*P+8)
M(i)=-t(i)/4+2+n*10;
elseif (t(i)>=n*P+8 & t(i)<(n+1)*P)
M(i)=0;
end
end
end
e=2.71828;
i=sqrt(-1);
%fixam din nou axa timpului cu o rezolutie de 2ms, fiind o matrice transpusa (cu 1 coloana, pentru a putea efectua inmultirile necesare)
t=(0:0.002:40).';
%acelasi lucru, dar alegem numarul de coeficienti 10
for N=10

  k=(-N:1:+N);

  %calculez fiecare coeficient al seriei Fourier complexe pentru k de la
  %-10 la 10, luand in considerare si cazul k=0, unde stim ca C(0)=0.1
  zero=(k==0);
  C=(0.5*e.^(-i.*k*pi/5)-0.25-0.25*e.^(-2*i.*k*pi/5))./k.^2;
  C(zero)=0.1;

  % insumam termenii:
  % termenul k al sumei devine coloana k a unei matrice, pe ale carei coloane le insumam la sfarsit 
  x=sum(repmat(C,length(t),1).*exp(i.*repmat(k,length(t),1).* 2*pi/P.*repmat(t,1,length(k))),2);

end
h=figure;
set(h,'name','N=10 pentru o perioada','numbertitle','off')
plot(t,abs(x),'r', 'DisplayName', 'reconstruit'),grid
hold on
plot(t,M,'b','DisplayName','initial'),grid
hold off
legend('show')




%imi fixez axa timpului pentru a vizualiza putin peste 2 perioade, si aleg
%rezolutia 2ms
P=40;
t=0:0.002:90;
M=zeros(1,length(t));
for i=1:1:length(t)
for n=0:1:500
    %imi impart functia pe ramuri pentru cazul in care semnalul este
    %crescator, cel in care este descrescator si cel in care e 0
if (t(i)>=n*P & t(i)<n*P+4)
M(i)=t(i)/4-n*10;
elseif (t(i)>=n*P+4 & t(i)<n*P+8)
M(i)=-t(i)/4+2+n*10;
elseif (t(i)>=n*P+8 & t(i)<(n+1)*P)
M(i)=0;
end
end
end

e=2.71828;
i=sqrt(-1);
%fixam din nou axa timpului cu o rezolutie de 2ms, fiind o matrice transpusa (cu 1 coloana, pentru a putea efectua inmultirile necesare)
t=(0:0.002:90).';
%alegem numarul de coeficienti 10
for N=10

  k=(-N:1:+N);

  %calculez fiecare coeficient al seriei Fourier complexe pentru k de la
  %-10 la 10, luand in considerare si cazul k=0, unde stim ca C(0)=0.1
  zero=(k==0);
  C=(0.5*e.^(-i.*k*pi/5)-0.25-0.25*e.^(-2*i.*k*pi/5))./k.^2;
  C(zero)=0.1;

  % insumam termenii:
  % termenul k al sumei devine coloana k a unei matrice, pe ale carei coloane le insumam la sfarsit 
  x=sum(repmat(C,length(t),1).*exp(i.*repmat(k,length(t),1).* 2*pi/P.*repmat(t,1,length(k))),2);

end
h=figure;
set(h,'name','N=10 pentru a vizualiza peste 2 perioade','numbertitle','off')
plot(t,abs(x),'r', 'DisplayName', 'reconstruit'),grid
hold on
plot(t,M,'b','DisplayName','initial'),grid
hold off
legend('show')


%acelasi lucru, dar pentru N=50 coeficienti
for N=50

  k=(-N:1:N);

  %calculez fiecare coeficient al seriei Fourier complexe pentru k de la
  %-50 la 50, luand in considerare si cazul k=0, unde stim ca C(0)=0.1
  zero=(k==0);
  C=(0.5*e.^(-i.*k*pi/5)-0.25-0.25*e.^(-2*i.*k*pi/5))./k.^2;
  C(zero)=0.1;

  % insumam termenii:
  % termenul k al sumei devine coloana k a unei matrice, pe ale carei coloane le insumam la sfarsit 
  %repmat (A,l,c) repeta matricea A pe l linii si c coloane, formand o
  %matrice noua
  x=sum(repmat(C,length(t),1).*exp(i.*repmat(k,length(t),1).*2*pi/P.*repmat(t,1,length(k))),2);

end
h=figure;
set(h,'name','N=50 pentru a vizualiza peste 2 perioade','numbertitle','off')
plot(t,abs(x),'r', 'DisplayName', 'reconstruit'),grid
hold on
plot(t,M,'b','DisplayName','initial'),grid
hold off
legend('show')


