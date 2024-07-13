colores(X,Y):-primario(X), primario(Y).
primario(rojo).
primario(azul):-!. % corta la busqueda de soluciones
primario(amarillo).

% ?- colores(X,Y).
% encontrar su arbol de busqueda

/*
rojo, rojo
rojo, azul
azul, rojo
azul, azul
*/