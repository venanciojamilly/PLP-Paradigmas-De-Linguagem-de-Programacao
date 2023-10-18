% Definir regras para miar e latir
miar :- write('Miau ').
latir :- write('Au Au ').

% Definir regra principal
main :-
    write('Digite "g" para gato ou "c" para cachorro: '),
    read(Animal),
    write('Digite um número inteiro: '),
    read(N),
    (Animal = 'g' -> repeat_miar(N); Animal = 'c' -> repeat_latir(N); write('Animal desconhecido'), nl),
    halt.

% Repetir miados N vezes
repeat_miar(0).
repeat_miar(N) :-
    N > 0,
    miar,
    N1 is N - 1,
    repeat_miar(N1).

% Repetir latidos N vezes
repeat_latir(0).
repeat_latir(N) :-
    N > 0,
    latir,
    N1 is N - 1,
    repeat_latir(N1).
