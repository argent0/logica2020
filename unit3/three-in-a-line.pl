% vim: ft=prolog

move(1, 1, x).
%move(2, x).
%move(3, x).
%move(4, x).
%move(5, x).
%move(6, x).
%move(7, x).
%move(8, x).
%move(9, x).
%
%move(1, o).
move(1, 2, o).
%move(3, o).
%move(4, o).
%move(5, o).
%move(6, o).
%move(7, o).
%move(8, o).
%move(9, o).

% a valid list of moves

:- dynamic move/3.

incompatible(move(R, C, _), move(R, C,_)).

make_move(R, C, P) :-
	write('enter position:'), nl,
	read(R), read(C), read(P), assert_move(R, C, P).

assert_move(R, C, P) :- move(R, C, P), write('Invalid'), nl, !.
assert_move(R, C, P) :- assertz(move(R, C, P)), !.

win(P) :- move(R, 1, P), move(R, 2, P), move(R, 3, P), !.
win(P) :- move(1, C, P), move(2, C, P), move(3, C, P), !.
win(P) :- move(1, 1, P), move(2, 2, P), move(3, 3, P), !.
win(P) :- move(1, 3, P), move(2, 2, P), move(1, 3, P), !.
