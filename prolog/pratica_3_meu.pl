main :-
    read(N), 
    verifica_par(L),!.


verifica_par(H|Tail) :- verifica(H,Tail).
verifica(X,X|Tail):- verifica_par(Tail,Tail).