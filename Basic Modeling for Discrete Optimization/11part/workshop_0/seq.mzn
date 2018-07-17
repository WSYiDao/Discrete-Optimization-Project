int :n ;
set of int: index = 0..n-1;
array[index] of var 0..3: x;
constraint x[0] = 0;
constraint x[n-1] = 3;
constraint forall(i in 0..n-2 )(x[i] + x[i+1] <= 3);
constraint forall(i in index where (i+1) mod 3 =0)(x[i] >= 2);

solve maximize sum(i in index)(x[i]);

output ["\(sum(x)) = \(x)\n"]