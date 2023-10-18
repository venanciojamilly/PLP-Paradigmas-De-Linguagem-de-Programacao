%numeros de armstrong

%main:- read(Number),
%verifica(Number, 2).

%verifica(Number,Soma):-Soma == Number,true.
%verifica(Number,Soma):-Number mod 10.

contar_digitos(0, 0).
contar_digitos(N, Count) :-
    N > 0,
    N1 is N // 10,
    contar_digitos(N1, Count1),
    Count is Count1 + 1.




verifica(N,Soma,Cont,Number,Result) :- Soma =:= Number,Result is Soma.
verifica(N,Soma,Cont,Numbe,Result) :-
    D is N mod 10,

    N1 is N // 10,
    New is N1**Cont,
    Soma2 is Soma + New,
    verifica(N1,Soma2,Cont,Number,Result).

% Regra principal
main :-
    write('Digite um número inteiro: '),
    read(N),
    contar_digitos(N,Count),
    verifica(N,Soma,Count,N,Result),!.
