# A Bruteforce knapsack problem from the LocalSolver docs written in AMPL.

set I;
param Value{I};
param Weight{I};
param KnapsackBound;
var Take{I} binary;

maximize TotalValue: sum{i in I} Take[i] * Value[i];
s.t. WeightLimit: sum{i in I} Take[i] * Weight[i] <= KnapsackBound;

data;

param:
I: Weight Value :=
1    3      8
2    2     12
3    1      9
4    4     14
5    3     16
6    3     10
7    1      6  
8    2      7
9    2     11
10   5     13;

param KnapsackBound := 1024;
