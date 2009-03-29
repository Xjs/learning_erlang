-module(user).
-compile(export_all).

create(MyName, RoomNode) ->
    Pid = spawn(fun() -> loop(MyName, RoomNode) end),
    room:add_user(Pid, MyName, RoomNode),
    Pid.

loop(MyName, RoomNode) ->
    receive
        {accept, SenderName, Message} ->
            io:format("~n~s receives from ~s: ~s ~n",
                [MyName, SenderName, Message]),
            loop(MyName, RoomNode);

        {say, Message} ->
            io:format("~n~s says ~s ~n", [MyName, Message]),
            {room, RoomNode} ! {self(), broadcast, MyName, Message},
            loop(MyName, RoomNode)
    end.
