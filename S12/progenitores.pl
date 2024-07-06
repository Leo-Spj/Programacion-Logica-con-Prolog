% ARBOL GENEALOGICO: 

% pilar + jorge = jerico y lucia
% jerico = ana y alfredo
% alfredo = jose y maria

% CREANDO HECHOS:
progenitor(pilar, jerico).
progenitor(pilar, lucia).

progenitor(jorge, jerico).
progenitor(jorge, lucia).

progenitor(jerico, ana).
progenitor(jerico, alfredo).

progenitor(alfredo, jose).
progenitor(alfredo, maria).




% indicar si maria y jose son hijos de alfredo
/*
1 ?- progenitor( alfredo, maria).
true.

2 ?- progenitor( alfredo, jose).
true.
*/


% quienes son hijos de jerico
/*
1 ?- progenitor(jerico, X).
X = ana ;
X = alfredo.
*/


% jerico tiene 2 hijos mas, juan y carlos. listarlos todos sus hijos
progenitor(jerico, juan).
progenitor(jerico, carlos).
/*
1 ?- progenitor(jerico, X).
X = ana ;
X = alfredo ;
X = juan ;
X = carlos.
*/

% ----------------------

% 6 y 12 son divisibles por 2 y 3
% 4 es divisible por 2
% indicar que numeros son divisibles por 6

divisible(6, 2).
divisible(6, 3).
divisible(12, 2).
divisible(12, 3).
divisible(4, 2).

div(X, 6):- divisible(X, 2), divisible(X, 3).
/*
1 ?- dev_seis(X,6).
X = 6 ;
X = 12 ;
false.
*/


/*
atlanta esta en georgia
houton y austin se encuentran en texas
toronto está en canada

ademas se sabe que:
lo que esta en georgia o texas esta en usa
lo que esta en ontario tambien esta en canada
lo que esta en usa o canada tambien esta en norte de america

a) generar su bd de conociemiento (incluyendo las relas que correspondan)
b) se encuentra toronto en norte america?


*/
esta(atlanta, georgia).
esta(houston, texas).
esta(austin, texas).
esta(toronto, canada).

esta(georgia, usa).
esta(texas, usa).

esta(ontario, canada).

esta(usa, norteAmerica).
esta(canada, norteAmerica).

esta_pais(X,Z) :- esta(X,Y), esta(Y,Z).