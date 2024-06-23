/*
Si un a animal es angulado y tiene rayas negras entonces es una cebra.
Si un animal rumia y es mamifero , entonces es angulado.
Si un animal es mamifero y tiene pezuñas entonces es angulado.
El animal es mamifero.
El animal tiene pezuñas.
El animal tiene rayas negras.

mostrar el proceso de busqueda de prolog.
*/

%Hechos

:-set_prolog_flag(unknown, fail). % sirve para que no necesite argumentos en los predicados

es_mamifero. %sierve para solo tener "predicados" y no "hechos"
tiene_pezunas.
tiene_rayas_negras.

es_cebra:- es_angulado, tiene_rayas_negras .
es_angulado:- rumia, es_mamifero.
es_angulado:- es_mamifero, tiene_pezunas.

% :-es_cebra
% Hace busqueda por profundidad, en rumia falla, por lo que busca en el segundo "es_angulado"



% -----------------------



/*
resolver la busqueda en profundidad si 
*/

located_in(X,X).

located_in(atlanta, georgia).
located_in(houston, texas).
located_in(austin, texas).
located_in(toronto, ontario).

located_in(X,usa):- located_in(X, georgia). % tambien se puede usar el o: ";"
located_in(X,usa):- located_in(X, texas).

located_in(X, canada):- located_in(X, ontario).

located_in(X, northAmerica):- located_in(X, usa).
located_in(X, northAmerica):- located_in(X, canada).

% :-located_in(toronto, northAmerica).


% Arbol Genealogico
% diagrama en: ./busquedaProfundidad.md 
es_progenitor(jose, jorge).
es_progenitor(jose, sara).
es_progenitor(jose,luis).
es_progenitor(jose,pedro).
es_progenitor(maria, jorge).
es_progenitor(maria, sara).
es_progenitor(maria,luis).
es_progenitor(maria,pedro).

es_progenitor(jorge, mario).
es_progenitor(jorge, rosa).
es_progenitor(sara, mario).
es_progenitor(sara, rosa).

es_progenitor(mario, raul).
es_progenitor(mario, erika).

es_progenitor(luis, isabel).

es_progenitor(pedro, hilda).

es_progenitor(hilda, saul).
es_progenitor(hilda, flor).

es_nieto(Z, X):- es_progenitor(X,Y), es_progenitor(Y,Z).

% es_nieto(mario, jose).

% RECURSIVIDAD
es_ancestro(X,Y):- es_progenitor(X,Y).
es_ancestro(X,Y):- es_progenitor(X,Z), es_ancestro(Z,Y).

% es_ancestro(jorge, X).


% -----------------

/*
Hallar la suman de los 'n' primero numero naturales
S= 1+2+3+...+(n-1)+n
*/
suma(0,0).
% N numero, R resultado
suma(N, R):- A is N-1 , suma(A,B) , R is N + B .

/*
Hallar el factorial de 'n' donde 'n' es un numero natrual.
F=1*2*3*..n
*/
factorial(0,1).
factorial(N,R):- A is N-1 , factorial(A,B), R is N*B .