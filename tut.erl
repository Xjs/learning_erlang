-module(tut).
-export([double/1, fac/1, mult/2, convert_length/2]).

double(X) ->
	2 * X.

fac(1) ->
	1;
fac(N) ->
	N * fac(N - 1).

mult(X, Y) ->
	X * Y.

convert_length({inch, X}) ->
	{centimeter, M / 2.54};

convert_length({centimeter, Y}) ->
	{inch, N * 2.54}.
