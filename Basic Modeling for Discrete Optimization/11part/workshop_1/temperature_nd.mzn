array[int] of int: readings;
int: start;
int: n = length(readings);
set of int:HOUR = 0..n-1;
array[0..n] of var 25..30:temp;
array[HOUR] of var tool:choice;

constraint forall (i in 0..n-1)(temp[i+1] = (readings[i+1]+temp[i]) div 2 + tool_effect[choice[i]] );
constraint start = temp[0];

enum tool = {do_nothing, strongly_cool, cool, strongly_heat, heat};
array[tool] of int: tool_cost = [0,9,3,5,1];
array[tool] of int: tool_effect = [0,-5,-2,4,1];

var int:obj;
constraint obj = sum(i in HOUR)(tool_cost[choice[i]]);

solve minimize obj;
output ["temp = \(temp);\nchoice = \(choice);\ncost = \(obj);\n)"];
