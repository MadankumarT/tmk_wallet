-module(tmk_wallet).
%-export([start_link/0,init/1]). %handle_call/3,handle_cast/2,teminate/2,code_change/3]).
-export([start_link/0, init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).


-behaviour(gen_server).

start_link()->
    gen_server:start_link({local,?MODULE},?MODULE,[],[]).

init([])->
 {ok,"tmk_wallet started"}.

handle_call(_R,F,State)->
{reply,ok,State}.

handle_cast(_R,State)->
{noreply,State}.

handle_info(_R,State)->
{noreply,State}.

terminate(_R,State)->
ok.

code_change(_O,NS,_State)->
{ok,NS}.
