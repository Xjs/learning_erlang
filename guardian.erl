-module(guardian).
-compile(export_all).

the_answer_is(N) when N == 42 orelse N == 36 -> true;
the_answer_is(_) -> false.
