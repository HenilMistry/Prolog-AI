/*
    The cut (!)
    --> It is used to stop the program, from going into
    unwanted backtracking loops.
    --> Red cut :
        => The cut which, prevents the other solutions to 
        occur, if there are any.
    --> Green cut :
        => The cut which, prevents only the comutational path
        not the possibly other solution.
*/

a(1).
a(2).
a(3).
a(4).

b(1).
b(2).
b(3).

% c(1).
c(2).
c(3).
c(4).

alpha(X) :-
    a(X),nl,write(X),!,b(X),write(' BC Checking ... '+X),c(X).

demoFail(X) :-
    a(X),nl,write('Passed by A '+X),b(X),write(' Passed by B '+X+' Now, C must be true...'),!,c(X),write('==> C got passed by '+X),fail.