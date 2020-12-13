-module(prop_base).
-include_lib("proper/include/proper.hrl").

%%%%%%%%%%%%%%%%%%
%%% Properties %%%
%%%%%%%%%%%%%%%%%%
prop_biggest() ->
    ?FORALL(List, non_empty(list(integer())),
        begin
            biggest(List) =:= lists:last(lists:sort(List))
        end).

%%%%%%%%%%%%%%%
%%% Helpers %%%
%%%%%%%%%%%%%%%
boolean(_) -> true.
biggest([Head | _Tail]) ->
    Head.

%%%%%%%%%%%%%%%%%%
%%% Generators %%%
%%%%%%%%%%%%%%%%%%
mytype() -> term().
