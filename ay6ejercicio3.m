clear all
clc
N1=512;
fprintf('N = %i /',N1)
l1=log2(N1);
fprintf('Log2N = %f \n',l1)
tpofft(N1)


N2=512*2;
fprintf('N = %i /',N2)
l2=log2(N2);
fprintf('Log2N = %f \n',l2)
tpofft(N2)

N3=512*4;
fprintf('N = %i /',N3)
l3=log2(N3);
fprintf('Log2N = %f \n',l3)
tpofft(N3)

N4=512*8;
fprintf('N = %i /',N4)
l4=log2(N4);
fprintf('Log2N = %f \n',l4)
tpofft(N4)

