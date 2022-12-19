% to get the Nth term of fibonacci series...
fibonacci(1,0).
fibonacci(2,1).
fibonacci(N,Y):-
    N > 2,
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,Ans1),
    fibonacci(N2,Ans2),
    Y is Ans1+Ans2.