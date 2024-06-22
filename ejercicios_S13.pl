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
