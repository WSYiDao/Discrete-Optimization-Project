int :n = 3;
% set of int: index = 0..n-1;
% array[index] of var int: x;
array[0..n-1] of var 0..9:x;
constraint forall(i in 0..n-2 )(x[i] <= x[i+1]);
constraint sum(x) = product(x);
% constraint forall(i in index )(x[i] <= 9);
% constraint forall(i in index )(x[i] >= 0);

solve satisfy;