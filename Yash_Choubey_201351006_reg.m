%linear regression
clear all;
close all;
format long;

name=input("Enter training file name: ","s");
A=dlmread(name,",");
n=size(A);
n
x=A(1:n(2)-1);
y=A(n(2));
w=inv(x'*x)*x'*y;
w

name1=input("Enter testing file name: ","s");
b=dlmread(name1,",");
n=size(B);
n
e=0
for i =1:n(1)
    testcase=B(i,1:n(2)-1);
    final=w'*testcase';
    
    if((B(i,n(2))==1 && final<0) || ((B(i,n(2))==-1 && final>0) ))
       e++;
    endif 
endfor
printf("error(s) :");
e
er=(e/n(1))*100;
printf("\n Error rate: ");
er
