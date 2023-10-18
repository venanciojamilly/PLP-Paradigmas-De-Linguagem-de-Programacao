% Regra para calcular o XOR de todos os elementos da lista
xor_list([], 0).
xor_list([X|Xs], Result) :-
    xor_list(Xs, Temp),
    Result is X xor Temp.

% Regra principal "main" que encontra o número solitário
%main :-
%    Lista = [],
%    xor_list(Lista, Result),
%    write(Result).

% Exemplo de consulta: execute "main." para encontrar o número solitário na lista fornecida.

% Regra para encontrar o número solitário
encontrar_solitario([X], X).  % Caso base: quando há apenas um elemento na lista, ele é o número solitário.
encontrar_solitario([X | Tail], Resultado) :-
    member(X, Tail),          % Verifica se X está na cauda (não é solitário)
    remover_elemento(X, Tail, NovaTail), % Remove todas as ocorrências de X na cauda
    encontrar_solitario(NovaTail, Resultado).
encontrar_solitario([X | _], X). % Se não encontrarmos outra ocorrência de X na cauda, então X é o número solitário

% Regra para remover todas as ocorrências de um elemento em uma lista
remover_elemento(_, [], []).
remover_elemento(E, [E | Tail], Resultado) :- remover_elemento(E, Tail, Resultado).
remover_elemento(E, [X | Tail], [X | Resultado]) :- X \= E, remover_elemento(E, Tail, Resultado).

% Regra principal
main :-
    read(Lista),
    encontrar_solitario(Lista, Result),
    write(Result),
    halt.






