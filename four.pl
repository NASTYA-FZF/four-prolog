summ([], 0):-!.

summ([H|T], Res):-
    summ(T, Res1),
    Res is Res1+H.

max_el([], _):-
    write("Так как список пустой нет максимального элемента"), !.

max_el([H|[]], H):-!.

max_el([H|T], Max):-
    max_el(T, Max1),
    (   H>=Max1, Max is H;
        H<Max1, Max is Max1),
    !.

new_list([],[]):-!.
new_list([X],[X]):-!.
new_list([H,_|T],[H|R]):-new_list(T,R).

print:-
    write("summ(List,Res) - сумма элементов списка"), nl,
    write("max_el(List,Res) - поиск максимального элемента в списке"), nl,
    write("new_list(List,Res) - создание нового списка по нечетным позициям").
