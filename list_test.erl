-module(list_test).
-compile(export_all).
build_append() -> 
    build_append(0,[]).
build_append(N,L) when N < 100000 ->
    build_append(N+1,L++[N]);  % function calls its self with N+1 and a new list with N as the last element.
build_append(_,L) ->
    L.

build_insert() ->
    build_insert(0,[]).
build_insert(N,L) when N < 100000 ->
    build_insert(N+1,[N|L]);   % function calls its self with N+1 and a new list with N as the head.
build_insert(_,L) ->
    lists:reverse(L).                          % function has to reverse the list before it retuns it.

