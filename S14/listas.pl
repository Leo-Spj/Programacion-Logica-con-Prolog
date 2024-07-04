longitud([],0).
longitud([x|T],N):- N1 is N-1, longitud(T,N1). % x es constante
% longitud(D, 5).

longitud2([],0).
longitud2([X|T],N):- longitud2(T,N1), N is N1+1.
% longitud2([5,3,7,5,3],X).


% producto escalar
prodEscalar([],[],0).
prodEscalar([X|Xs],[Y|Ys],N):- prodEscalar(Xs,Ys,N1), N is N1 + X * Y.
% prodEscalar([1,3],[2,4],N).

incremental(X,Y):- Y is X+1.
incLista([],[]).
incLista([X|Xs],[Y|Ys]):- incremental(X,Y), incLista(Xs,Ys).
% incLista([1,2,3,4],X).

listaPos([],[]).
listaPos([X|Xs], [X|Ys]):- X>0, listaPos(Xs,Ys).
listaPos([X|Xs], Ys):- X=<0, listaPos(Xs,Ys).
% listaPos([1,2,3],X).

