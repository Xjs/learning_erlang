-module(x).
-export([foreach/2, map/2]).

foreach(Fun, [First|Rest]) ->
    Fun(First),
    foreach(Fun, Rest);
foreach(Fun, []) ->
    ok.

map(Fun, [First|Rest]) -> 
    [Fun(First)|map(Fun,Rest)];
map(Fun, []) -> 
    [].
