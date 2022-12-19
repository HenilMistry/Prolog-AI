% recursive call to find the factorial of a number...
factorial(0,1).
factorial(X,Y):-
    X > 0, X1 is X-1,factorial(X1,Ans),Y is Ans*X.