% some of the base conditions for overflows...=======================================
waterJug(X,Y):-
    X>4,Y<3,write('4L Water jug overflowed.'),nl.

waterJug(X,Y):-
    X<4,Y>3,write('3L Water jug overflowed.'),nl.

waterJug(X,Y):-
    X>4,Y>3,write('Both Water jug overflowed.'),nl.

% the main algorithm =================================================================
waterJug(X,Y):-
    (X=:=0,Y=:=0,nl,write('Y <- 3'),YY is 3,waterJug(X,YY));
    (X=:=0,Y=:=0,nl,write('X <- 4'),XX is 4,waterJug(XX,Y));
    (X=:=2,Y=:=0,nl,write('Goal'));
    (X=:=4,Y=:=0,nl,write('X(4) --> Y(0) ==> Y(3)'),XX is X-3,YY is 3,waterJug(XX,YY));
    (X=:=0,Y=:=3,nl,write('Y(3) --> X(0) ==> X(3)'),XX is 3,YY is 0,waterJug(XX,YY));
    (X=:=1,Y=:=3,nl,write('Y(3) -> Y(0)'),YY is 0,waterJug(X,YY));
    (X=:=3,Y=:=0,nl,write('X(3) --> Y(0) ==> Y(3)'),YY is 3,waterJug(X,YY));
    (X=:=3,Y=:=3,nl,write('Y(3) --> X(3) ==> Y(2),X(4)'),XX is X+1,YY is Y-1,waterJug(XX,YY));
    (X=:=1,Y=:=0,nl,write('X(1) -> Y(0)'),XX is Y,YY is X,waterJug(XX,YY));
    (X=:=0,Y=:=1,nl,write('X(4) Y(3)'),XX is 4,YY is 3,waterJug(XX,YY));
    (X=:=4,Y=:=1,nl,write('X(4) --> Y(1) ==> X(2)'),XX is X-2,YY is Y+2,waterJug(XX,YY));
    (X=:=2,Y=:=3,nl,write('Y(3) -> Y(0)'),YY is 0,waterJug(X,YY));
    (X=:=4,Y=:=2,nl,write('X(4) -> X(0)'),XX is 0,waterJug(XX,Y));
    (X=:=0,Y=:=2,nl,write('Y(2) --> X(0) ==> x(2)'),XX is Y,YY is X,waterJug(XX,YY)).