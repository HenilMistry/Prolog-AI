/* ========== male predicates ========== */
male(kantibhai).
male(ambarambhai).
male(rakeshbhai).
male(yogeshbhai).
male(heal).
male(henil).
male(hardik).
male(hirenkumar).
male(rajubhai).
male(het).
male(kavya).
male(dahyabhai).
male(amitkumar).

/* ========== female predicates ========== */
female(gomtiben).
female(jasuben).
female(alkaben).
female(yogitaben).
female(divya).
female(kusumben).
female(bhavnaben).
female(hinaben).

/* ========== parent predicates ========== */
parent(kantibhai,ambarambhai).
parent(kantibhai,gomtiben).

parent(rakeshbhai,kantibhai).
parent(rakeshbhai,jasuben).
parent(kusumben,kantibhai).
parent(kusumben,jasuben).
parent(yogeshbhai,kantibhai).
parent(yogeshbhai,jasuben).

parent(heal,rakeshbhai).
parent(heal,alkaben).
parent(henil,rakeshbhai).
parent(henil,alkaben).

parent(hardik,jagdishbhai).
parent(hardik,kusumben).
parent(divya,jagdishbhai).
parent(divya,kusumben).

parent(alkaben,dahyabhai).
parent(alkaben,bhavnaben).
parent(amitkumar,dahyabhai).
parent(amitkumar,bhavnaben).
parent(yogitaben,dahyabhai).
parent(yogitaben,bhavnaben).

parent(het,rajubhai).
parent(het,yogitaben).
parent(kavya,rajubhai).
parent(kavya,yogitaben).

/* ========== now, rules ========== */
% rule for mother
mother(Child,Female):-
    female(Female),parent(Child,Female).

% rule for father
father(Child,Male):-
    male(Male),parent(Child,Male).

% rule for son
son(Child,Parent):-
    male(Child),parent(Child,Parent).

% rule for daughter
daughter(Child,Parent):-
    female(Child),parent(Child,Parent).

% rule for grandfather
grandfather(Child,Male):-
    male(Male),parent(Child,X),parent(X,Male).

% rule for grandmother
grandmother(Child,Female):-
    female(Female),parent(Child,X),parent(X,Female).

% rule for brother
brother(Child,AnotherChild):-
    male(AnotherChild),parent(Child,P),parent(AnotherChild,P).

% rule for sister
sister(Child,AnotherChild):-
    female(AnotherChild),parent(Child,P),parent(AnotherChild,P).