toFahrenhit(0,32).
toFahrenhit(X,F):-
	F is (X*(9/5))+32.

toCelsius(32,0).
toCelsius(X,C):-
    C is ((X-32)*5)/9.
