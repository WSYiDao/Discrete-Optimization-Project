% var int: x;
% constraint x >=1;
% constraint x <=10;
var 1..10: x;
solve satisfy;
output [show(x)];
