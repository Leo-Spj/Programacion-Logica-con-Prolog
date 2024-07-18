/*
se sabe que:
2 divide a 6
2 divide a 4
2 divide a 12
3 divide a 6
3 divide a 12

desarroll el arbol de busqueda. para el sgte enunciado:
"6 divide a un numero siempre que 2 y 3 dividan a dicho numero"


*/
divide(2,6). % 1
divide(2,4). % 2
divide(2,12). % 3
divide(3,6). % 4
divide(3,12). % 5

divide(6,X):-divide(2,X),divide(3,X). % 6

/*
GRAFICO DE ARBOL DE BUSQUEDA:

```mermaid
graph TD

00[divide 6,X :-] 
0[divide 2,X; divide 3,X]

00 --> 0

1[divide 2,6]
2[divide 2,4]
3[divide 2,12]

0 -- "X=6" --> 1
0 -- "X=4" --> 2
0 -- "X=12" --> 3

4[divide 3,6]
5[NO MATCH!!]
6[divide 3,12]

1 --> 4
2 --> 5
3 --> 6

4 --> 7[6]
6 --> 8[12]
```
*/




% ------------------------------


s(X,Y):-g(X), e(Y).
s(X,Y):-e(X), m(Y).
s(X,Y):-g(X), m(Y).
g(a).
e(b).
e(c).
m(d).
m(e).
q(X,Y):-s(X,Y).

/*

GRAFICO DE ARBOL DE BUSQUEDA:


*/


