% 1)
/*
a) "Toda madre ama a sus hijos"
Variables:
Madre
Hijo
Ama

∀X, ∀Y [Madre(X) ^ Hijo(Y, X) -> Ama(X,Y)]
*/

/* Pasarlo a logica de primer orden:
b) "Todos los amigos de luis son a migos de Antonio, pero los amigos de Pepe, que no son enfermeros, no lo son.
Variables:
Amigo
Luis
Antonio
Pepe
Enfermero

logica de primer orden:
∀X [Amigo(X, luis) -> Amigo(X, antonio)] ^ ∀X [Amigo(X, pepe) ^ ¬Enfermero(X) -> ¬Amigo(X, antonio)]
*/

/*  Pasarlo a logica de primer orden:
c) "solo los amigos de Antonio, que son enfermeros, son amigos de los amigos de Pepe, que no son medicos"
Variables:
Amigo
Antonio
Pepe
Enfermero
Medico

logica de primer orden:
∀X [Amigo(X, antonio) ^ Enfermero(X) -> Amigo(Amigo(X, pepe) ^ ¬Medico(X))]
*/


% 2)
/*
Se sabe que 6 y 12 son divisibles por 2 y 3
ademas 4 es divisible por 2

a) "los numeros divisibles por 2 y 3 tambien son divisibles por 6"
variables:
numero
2
3
6
divisible

logica de primer orden:
∀X [divisible(X, 2) ^ divisible(X, 3) -> divisible(X, 6)]

*/
% b) "hechos y reglas para indicar que numeros son divisibles por 6"
divisible(6, 2).
divisible(6, 3).
divisible(12, 2).
divisible(12, 3).
divisible(4, 2).

div(X, 6):- divisible(X, 2), divisible(X, 3).
/*
1 ?- div(X,6).
X = 6 ;
X = 12 ;
false.
*/


% 3)

% Represente en Prolog los siguientes hechos:

% Rolando quiere a Maria
% Rolando quiere a Belen
% Manuel quiere a Belen
% Maria quiere a Rolando
% Todos quieren a Juan y a María.
% Todo el mundo se quiere a sí mismo.
% Alguien quiere a Juan y a Rolando
% Alguien quiere a Maria.
% Alguien quiere a todos los demás

% Realice las siguientes consultas:

% ¿Quiere Manuel a María?
% ¿Quiere Manuel a María y a Rolando?
% ¿Quiere Manuel a alguien?
% ¿Quienes quieren a Maria?
% ¿Quienes quieren a Rolando y a María?
% ¿Quienes son los que se quieren mutuamente?



% 4) Dada una lista, devolver la lista inversa.
inversa([],[]).
inversa([X|Xs],Ys):- inversa(Xs,Zs), append(Zs,[X],Ys).


% 5) dada una lista eliminar los 2 ultimos elementos de dicha lista.
elimina2Ultimos([X,Y],[]).
elimina2Ultimos([X|Xs],[X|Ys]):- elimina2Ultimos(Xs,Ys).
% elimina2Ultimos([1,2,3,4,5],X).
