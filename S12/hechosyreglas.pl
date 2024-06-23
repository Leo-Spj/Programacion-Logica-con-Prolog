% HECHOS:

% predicado(obj1, obj2, ...). - relacion
edad(juan, 27).
edad(maria, 20).
edad(pedro, 15).

le_gusta(juan, maria).
le_gusta(maria, juan).



% REGLAS:

% head :- body.
% head :- hecho1, hecho2, ... hechon.
mayor_de_edad(X) :- edad(X,E), E>18.
se_gustan(X,Y) :- le_gusta(X,Y), le_gusta(Y,X).



% --------------------------


% tamaño de planetas

mas_grande(tierra, luna).
mas_grande(tierra, mercurio).
mas_grande(jupiter, tierra).
mas_grande(jupiter, marte).
mas_grande(marte, luna).


mucho_mas_grande(X,Y):- mas_grande(A,B), mas_grande(B,C).

recur_mucho_mas_grande(X,Y):- mas_grande(X,Y).
recur_mucho_mas_grande(X,Y):- mas_grande(X,Z), recur_mucho_mas_grande(Z,Y).