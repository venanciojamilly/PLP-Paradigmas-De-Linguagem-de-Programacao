%funciona!!!!
% Função para calcular o número de dígitos de um número
contar_digitos(0, 0).
contar_digitos(N, Count) :-
    N > 0,
    N1 is N // 10,
    contar_digitos(N1, Count1),
    Count is Count1 + 1.

pot(_,0,1). % base
pot(B,N,P) :- % passo
N>0, % condição do passo
M is N-1, % simplifica o problema
pot(B,M,R), % obtém solução da instância menor
P is B*R. 

% Função para somar os cubos dos dígitos de um número
somar_pot_dos_digitos(0, 0,_).
somar_pot_dos_digitos(N, Soma,Cont) :-
    N > 0,
    D is N mod 10,
    %cubo(D, Cubo),
    pot(D,Cont,Result),
    N1 is N // 10,
    somar_pot_dos_digitos(N1, Soma1,Cont),
    Soma is Soma1 + Result.

% Regra principal
main :-
    read(N),
    contar_digitos(N, Count),
    somar_pot_dos_digitos(N, Soma,Count),
    (Soma =:= N -> write(true); write(false)),

    halt.