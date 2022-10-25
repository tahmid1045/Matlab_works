%% A distance is divided up into three parts: x1, x2 & x3. The following measurements have been done
%% l1 = 100.00 m
% l2 = 100.01 m
% l3 = 100.02 m
% l4 = 200.00 m
% l5 = 200.01 m
% l6 = 300.00 m
% x1 = ~l1
% x2 = ~l2
% x3 = ~l3
%% Calculate the adjustment values for x1, x2 and x3 assuming that all
%%observations are of equal accuracy  ?2 = 1 cm
l= [100.00;
    100.01;
    100.02;
    200.00;
    200.01;
    300.00]
A = [1 0 0;
    0 1 0;
    0 0 1;
    1 1 0;
    0 1 1;
    1 1 1;]
xh = inv(A'*A)*A'*l

lh = A*xh

v = lh - l