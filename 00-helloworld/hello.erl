% definicao dos modulos
-module(hello).

% incluindo lib de testes unitarios
-include_lib("eunit/include/eunit.hrl").

% export
-export([get_greeting/0]).
-export([hello_world/0]).

% implementacao
get_greeting() -> 
"hello, world\n".
hello_world()  -> io:fwrite(get_greeting()).

% testes
get_greeting_test() -> ?assert(get_greeting() =:= "hello, world\n").

% compilando e rodando
% erl -compile hello && erl -noshell -s hello hello_world -s init stop
%
% rodando testes
% erl -compile hello && erl -noshell -s hello test -s init stop