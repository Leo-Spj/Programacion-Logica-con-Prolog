% Detective del juego de mesa Clue

% Hechos

persona(srVerdi).
persona(cnelMostaza).
persona(draOrquidea).
persona(sraAzulino).
persona(profMoradillo).
persona(srtaEscarlata).

arma(candelabro).
arma(daga).
arma(tuboDePlomo).
arma(revolver).
arma(soga).
arma(llaveInglesa).

lugar(salonDeBaile).
lugar(salaDeBillar).
lugar(terraza).
lugar(comedor).
lugar(pasillo).
lugar(cocina).
lugar(biblioteca).
lugar(sala).
lugar(estudio).

% Durante el juego se proporcionan pistas que son los no hechos

% para los no asesinos:
% noFueAsesino(srVerdi).

% para los no lugares:
% noFueEn(salonDeBaile).

% para los no armas:
% noFueCon(candelabro).

% Reglas

% Regla para saber si una persona fue asesina
fueAsesino(X):-persona(X), not(noFueAsesino(X)).

% Regla para saber si una persona fue con un arma
fueCon(X):-arma(X), not(noFueCon(X)).

% Regla para saber si una persona fue a un lugar
fueEn(X):-lugar(X), not(noFueEn(X)).


% Regla para saber si una persona fue a un lugar con un arma y fue asesina
fueAsesinoConEn(X,Y,Z):-fueAsesino(X), fueCon(Y), fueEn(Z).



% Testeando

noFueAsesino(srVerdi).
noFueAsesino(cnelMostaza).
noFueAsesino(profMoradillo).

noFueCon(soga).

noFueEn(comedor).
noFueEn(biblioteca).
noFueEn(estudio).

% ?- fueAsesinoConEn(sraAzulino, daga, terraza).