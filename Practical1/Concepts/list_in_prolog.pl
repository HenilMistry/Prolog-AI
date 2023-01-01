/* 

- A list in prolog is a collection of items, not necessarily be homogenous. They are in-built data
structures. It provides only the direct access to first element which is denoted as Head.
ex.
    [ Head | Tail ] where Head = first element and Tail = Rest List
- We can use nestead lists also.

*/
% empty list
[]
% normal list
[1,2,3]
% list of list
[1,[2,3]]
% [X | Y] head = X and Y = tail
% [1,2,3] X = 1 and Y = [2,3]

[1,2,3,henil] = [X, Y | Z]. % X = 1, Y = 2, Z = [3,henil]

% finding the length of the list...
len_list([],0).
len_list([_ | T], Length):-
    len_list(T,Ans),Length is Ans+1.

% check whether a element belongs to list or not...
is_member(X, [X | _]):-!.
is_member(X, [_ | Rest]):-
    is_member(X, Rest).