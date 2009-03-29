-module(sort).
-export([qsort/1]).

qsort([]) ->
    [];
qsort([Head | Tail]) ->
    qsort([ X || X <- Tail, X < Head ]) ++ [Head] ++ qsort([ X || X <- Tail, X >= Head ]).

