-module(room).
-compile(export_all).

start() ->
    register(room, spawn(fun() -> loop([]) end)).

add_user(User, MyName, RoomNode) ->
    {room, RoomNode} ! {User, add, MyName}.

loop(Chatters) ->
    receive
        {From, broadcast, SenderName, Message} ->
            [Member ! {accept, SenderName, Message} ||
                Member <- Chatters, Member =/= From],
        loop(Chatters);

        {From, add, MyName} ->
            lists:foreach(fun(Member) ->
                    Member ! {accept, "Server", MyName ++ " joined"} end,
                Chatters),
            loop([From|Chatters])
    end.
