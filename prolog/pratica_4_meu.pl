percorrer_matriz([]).
percorrer_matriz([Linha | RestoMatriz]) :-
    percorrer_linha(Linha),
    percorrer_matriz(RestoMatriz).


percorrer_linha([]).
percorrer_linha([Elemento | RestoLinha]) :-
  
    write(Elemento), write(' '),% Imprime o elemento
    percorrer_linha(RestoLinha).


%main:-
 %   read(Lista),
 %   percorrer_matriz(Lista),halt.
 % Regra para encontrar o maior elemento em uma lista
maior_lista([X], X, 1).
maior_lista([H | T], Maior, Pos) :-
    maior_lista(T, MaiorResto, PosResto),
    (H > MaiorResto -> Maior = H, Pos = 1; Maior = MaiorResto, Pos is PosResto + 1).

% Regra para encontrar os maiores elementos em uma lista de listas
maiores_listas([], [], []).
maiores_listas([L | Resto], [Maior | Maiores], [Pos | Posicoes]) :-
    maior_lista(L, Maior, Pos),
    maiores_listas(Resto, Maiores, Posicoes).

% Exemplo de uso
main :-
    read(ListaDeListas),
    maiores_listas(ListaDeListas, Maiores, Posicoes),
    write(Posicoes),
    halt.
