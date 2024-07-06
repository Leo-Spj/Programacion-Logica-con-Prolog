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

