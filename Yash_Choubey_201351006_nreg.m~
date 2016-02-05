
%non linear regression
clear all;
close all;
format long;

[a,b,c,d,ans]=textread("Iris_data_norm_train.txt","%f,%f,%f,%f,%f");
for i=1:1:110
j(i)=1;
endfor
x=[j',a,b,c,d,a.^2,b.^2,c.^2,d.^2,a.*b,a.*c,a.*d,b.*c,b.*d,c.*d];
y=[ans];
w=inv(x'*x)*x'*y;
w

[a,b,c,d,ans]=textread("iris_data_norm_test.txt","%f,%f,%f,%f,%f");
e=0
for i =1:40
    testcase=[j(i)',a(i),b(i),c(i),d(i),a(i).^2,b(i).^2,c(i).^2,d(i).^2,a(i).*b(i),a(i).*c(i),a(i).*d(i),b(i).*c(i),b(i).*d(i),c(i).*d(i)];
    final=w'*testcase';
    
    if((ans(i)==1 && final<0) || (ans(i)==-1 && final>0) )
        e++;
    endif 
endfor
printf("error :");
e
