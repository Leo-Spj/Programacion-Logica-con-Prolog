% progenitor de: x - y
/*
rolando - maria
rolando jose
jessica maria
jessica jose
maria jorge
maria belen
jose carlos
jose sara
jorge mirtha
jorge hernan
belen felix
belen ana
carlos julio
carlos rosario
sara raul
sara karina
*/
% para hallar los nietos, bisnietos, ancentro, prima, tio sobrima

% Hechos de progenitor
progenitor(rolando, maria).
progenitor(rolando, jose).
progenitor(jessica, maria).
progenitor(jessica, jose).
progenitor(maria, jorge).
progenitor(maria, belen).
progenitor(jose, carlos).
progenitor(jose, sara).
progenitor(jorge, mirtha).
progenitor(jorge, hernan).
progenitor(belen, felix).
progenitor(belen, ana).
progenitor(carlos, julio).
progenitor(carlos, rosario).
progenitor(sara, raul).
progenitor(sara, karina).

nieto(Nieto, Abuelo) :-
    progenitor(Abuelo, Padre),
    progenitor(Padre, Nieto).

bisnieto(Bisnieto, Bisabuelo) :-
    progenitor(Bisabuelo, Abuelo),
    progenitor(Abuelo, Padre),
    progenitor(Padre, Bisnieto).

ancestro(Ancestro, Descendiente) :-
    progenitor(Ancestro, Descendiente).

ancestro(Ancestro, Descendiente) :-
    progenitor(Ancestro, Intermedio),
    ancestro(Intermedio, Descendiente).

primo(Primo1, Primo2) :-
    progenitor(Padre1, Primo1),
    progenitor(Padre2, Primo2),
    hermano(Padre1, Padre2).

hermano(Hermano1, Hermano2) :-
    progenitor(Padre, Hermano1),
    progenitor(Padre, Hermano2),
    Hermano1 \= Hermano2.

tio(Tio, Sobrino) :-
    progenitor(Padre, Sobrino),
    hermano(Tio, Padre).

sobrino(Sobrino, Tio) :-
    tio(Tio, Sobrino).



/*
a) dada una lista obtener una nueba lista con los mismos elementos , pero triplicados.
b) dada una lista determinar su un determinado elemento pertenece o no a la lista
c) dadas dos listas, indicar si la primera es prefijo de la segunda
d) dadas dos listas, indicar si la primera es sufijo de la segunda
*/

% a)

triplicar([], []).
triplicar([X|Xs], [X,X,X|Ys]) :- triplicar(Xs, Ys).

% triplicar([1,2,3], X).

% b)

pertenece(X, [X|_]).
pertenece(X, [_|Ys]) :- pertenece(X, Ys).

% pertenece(3, [1,2,3,4,5]).
% pertenece(6, [1,2,3,4,5]).

% c)

prefijo([], _).
prefijo([X|Xs], [X|Ys]) :- prefijo(Xs, Ys).

% prefijo([1,2,3], [1,2,3,4,5]).
% prefijo([1,2,3], [1,2,4,5]).

% d)

sufijo(Xs, Ys) :- prefijo(Xs, Ys).
sufijo(Xs, [_|Ys]) :- sufijo(Xs, Ys).

% sufijo([3,4,5], [1,2,3,4,5]).
% sufijo([3,4,5], [1,2,3,4,5,6,7,8,9,3,4,5]).
% sufijo([3,4,5], [1,2,3,4]).