% definicao dos modulos
-module(elists).

% incluindo lib de testes unitarios
-include_lib("eunit/include/eunit.hrl").

% export
% -export([sort_list/0]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% nao altere esses caras
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
throw_not_implemented()
    -> throw("ERRO: nao implementado\n").

list_a()
    -> [item2, item1, item5, item3, item4].

list_b()
    -> [item6, item3].

list_c()
    -> [10, 2, 6, 4, 12, 8, 14, 18, 22, 16].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% sua implementacao aqui
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sort_list(L) ->
    throw_not_implemented().

sort_and_merge_no_duplicates(L1, L2) ->
    throw_not_implemented().

reverse_sort_list(L) ->
    throw_not_implemented().

sum_list_elements(L) ->
    throw_not_implemented().

multiply_list_elements_by_n(L, N) ->
    throw_not_implemented().

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% testes
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sort_list_a_test() ->
    ?assert(sort_list(list_a()) =:= [item1, item2, item3, item4, item5]).

sort_list_b_test() ->
    ?assert(sort_list(list_b()) =:= [item3, item6]).

sort_list_c_test() ->
    ?assert(sort_list(list_c()) =:= [2, 4, 6, 8, 10, 12, 14, 16, 18, 22]).

sort_and_merge_no_duplicates_test() ->
    ?assert(sort_and_merge_no_duplicates(list_a(), list_b()) =:= [item1, item2, item3, item4, item5, item6]).

reverse_sort_list_test() ->
    ?assert(reverse_sort_list(list_c()) =:= [22, 18, 16, 14, 12, 10, 8, 6, 4, 2]).

sum_list_elements_test() ->
    ?assert(sum_list_elements(list_c()) =:= 112).

multiply_list_elements_by_2_test() ->
    ?assert(multiply_list_elements_by_n(list_c(), 2) =:= [20, 4, 12, 8, 24, 16, 28, 36, 44, 32]).

multiply_list_elements_by_4_test() ->
    ?assert(multiply_list_elements_by_n(list_c(), 4) =:= [40, 8, 24, 16, 48, 32, 56, 72, 88, 64]).

% rodando interativamente
% erl                            % abre o REPL
% c(elists).                     % compila
% eunit:test(elists, [verbose]). % roda os testes unitarios
%
% rodando testes
% erl -compile elists && erl -noshell -s elists test -s init stop