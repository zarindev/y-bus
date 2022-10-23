clc
close all
cd('C:\Users\User\Desktop')
a = xlsread('y-bus');
excel_data = a
b = a(:,[1,2]);
s = size(a,1);
e = max(max(b));
y1 = zeros(e);
for i = 1:s
    z(a(i,1),a(i,2)) = (a(i,3)+a(i,4)*1i);
    z(a(i,2),a(i,1)) = (a(i,3)+a(i,4)*1i);
    
    y1(a(i,1),a(i,2)) = 1/(a(i,3)+a(i,4)*1i);
    y1(a(i,2),a(i,1)) = 1/(a(i,3)+a(i,4)*1i);
end
impedance_matrix = z
y = zeros(e);
for i = 1:e
    sum = 0;
    for j = 1:e
        if(i~=j)
            y(i,j) = -y1(i,j);
        end
        sum = sum + y1(i,j);
    end
    y(i,i) = sum;
end
y_bus = y
