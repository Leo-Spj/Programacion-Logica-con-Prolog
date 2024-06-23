


disyuncion de literales

(~p v ~q v ~r v ...) v u

p -> q == ~p v q

v v = v     f v = v
v f = f     f f = f
f v = v     v v = v
f f = v     v f = v

en prolog todo es clausula de horn (disyuncion de literales)

si lo volteamos:

(p n q n r n ... ) -> u



-----------------
Ó = ;
i = ,
entonces = :-

prediacado y constante en minúsculas
variables en mayúsculas

(p v q v r v ...) -> u

¬M(A) v ¬P(J,A) v H(A,J)
M(A) n P(J,A) -> H(A,J)
hija(A,B):- mujer(A), padre(B,A).

predicado es una relacion entre entidades
hija(A,B) es relacion
mujer(A) es caracteristica
padre(B,A) es relacion