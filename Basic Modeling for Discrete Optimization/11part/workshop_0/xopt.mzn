var 0..10: x;
constraint x mod 4 = 0;
solve maximize -(x - 7)*(x - 7);
output ["x = \(x)"];


% var int: y;
% constraint y * 4 =x;