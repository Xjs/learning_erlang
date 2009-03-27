-module(even_prime).
-export([is_even_prime/1]).

is_even_prime(2) ->
	true;
is_even_prime(N) when is_integer(N) ->
	false;
is_even_prime(Any) ->
	'I prefer integer inputs.'.

