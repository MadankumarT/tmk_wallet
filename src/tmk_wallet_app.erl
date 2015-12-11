-module(tmk_wallet_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    tmk_wallet_sup:start_link().

stop(_State) ->
    ok.
