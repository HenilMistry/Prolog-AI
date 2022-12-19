% arithmatic operations...
add(X,Y,Z):-
    Z is X+Y.

sub(X,Y,Z):-
    Z is X-Y.

mul(X,Y,Z):-
    Z is X*Y.

div(X,Y,Z):-
    Z is X/Y.

sum(0,0).
sum(1,1).
sum(2,3).
% recursive call...
sum(N,Y):-
    N > 2,N1 is N-1,sum(N1,Ans),Y is Ans+N.