
/*
 traduzca a logica de primer orden el siguiente enunciado:
 "Todo hijo de mi padre es mi hermano."

variables:
Padre
Hijo
Hermano
Predicados:
Padre(x)
Hijo(x,y)
Hermano(x,y)

Logica de primer orden:
∀x [Padre(X) ^ Hijo(X,Y) ^ Hijo(X,Z) -> Hermano(Y,Z)]
*/
padre_de(jose, jorge).
padre_de(jose, maria).
padre_de(jose, leonardo).
%regla
hermanos(Y,Z):- padre_de(X,Y), padre_de(X,Z), Y\=Z. 


/* Silogismo
 Traduzca a logica de primer orden:
1) "Toda madre ama a sus hijos"
2) "Julia es madre de Luis y  Luis es hijo de Julia"
3) Por lo tanto Julia ama a Luis.

Variables:
Madre
Hijo
Ama
Predicados:
Madre(x)
Hijo(x,y)
Ama(x,y)

Logica de primer orden:
1) ∀X, ∀Y [Madre(X) ^ Hijo(Y, X) -> Ama(X,Y)]
2) Madre(julia) ^ Hijo(luis, julia)
3) ama(julia, luis).
*/



/* Silogismo
 Traduzca a logica de primer orden:
1) "Todo los hombre son mortales"
2) "Socrates es un hombre"
3) "Por lo tanto Socrates es mortal"

Variables:
hombre
mortal
hombre -> mortal

∀X [hombre(X) -> mortal(X)]
hombre(socrate) -> mortal(socrates)
*/


