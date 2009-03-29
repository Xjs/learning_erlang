-module(tut).
-export([
    double/1,
    fac/1,
    mult/2,
    convert_length/1,
    list_length/1,
    list_max/1,
    reverse/1]).

double(X) ->
    2 * X.

fac(1) ->
    1;
fac(N) ->
    N * fac(N - 1).

mult(X, Y) ->
    X * Y.

convert_length({inch, X}) ->
    {centimeter, X / 2.54};

convert_length({centimeter, Y}) ->
    {inch, Y * 2.54}.

list_length([]) ->
    0;
list_length([First | Rest]) ->
    1 + list_length(Rest).

list_max([Head|Rest]) ->
    list_max(Rest, Head).

list_max([], Res) ->
    Res;

list_max([Head|Rest], Result_so_far) when Head > Result_so_far ->
    list_max(Rest, Head);
list_max([Head|Rest], Result_so_far) ->
    list_max(Rest, Result_so_far).

reverse(List) ->
    reverse(List, []).

reverse([Head | Rest], Reversed_List) ->
    reverse(Rest, [Head | Reversed_List]);
reverse([], Reversed_List) ->
    Reversed_List.

