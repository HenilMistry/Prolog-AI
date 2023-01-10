/* membership checking... */
% if element is head of the list, then stop...
list_member(X,[X|_]):-!.
% if not, slice the head and try to match...
list_member(X,[_|Tail]):-
    list_member(X, Tail).

/* length of a list */
% if list is empty, "length = 0".
list_length([],0).
% if list is not empty, Length is "length(Tail)+1".
list_length([_|Tail],N):-
    list_length(Tail,N1), N is N1+1.

/* concate the list */
/* param @first=first list
 * 		@second=second list
 * 		@third=result list 
 **/
% if first list is empty, ans = FirstList...
list_concate([],L,L).
% if not, concate them by splicing head..
list_concate([H1|T1],L2,[H1|L3]):-
    list_concate(T1,L2,L3).

/* delete an item */
list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

/* append to list */
list_append(Elem,T,T) :- list_member(Elem,T),!.
list_append(Elem,T,[Elem|T]).

/* insert into list */
list_insert(Elem,List,Ans) :- list_delete(Elem,Ans,List).

/* list permutation */
list_perm([],[]).
list_perm(L,[X|P]) :- list_delete(X,L,L1),list_perm(L1,P).

/* list reverse */
list_rev([],[]).
list_rev([Head|Tail],Reversed) :-
   list_rev(Tail, RevTail),list_concat(RevTail, [Head],Reversed).

/* sub list of list */
list_sublist( [], _ ).
list_sublist( [X|XS], [X|XSS] ) :- list_sublist( XS, XSS ).
list_sublist( [X|XS], [_|XSS] ) :- list_sublist( [X|XS], XSS ).



