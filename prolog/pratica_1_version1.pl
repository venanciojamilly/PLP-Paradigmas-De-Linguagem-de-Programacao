main :- read(Animal),
read(Num),
imprime_som(Animal,Num),halt.

imprime_som(Animal,0) :-!.
imprime_som('g',Num):- write('Miau '),Num2 is Num - 1, imprime_som('g',Num2).
imprime_som('c',Num):- write('Au Au '),Num2 is Num - 1, imprime_som('c',Num2).
