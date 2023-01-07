/*

>==========   Definition   ==========<

Write a program to solve a Monkey and 
Banana Problem.

>========== EXPECTED QUERY ==========<

Monkey can be 
    -> on floor
    -> on table
    -> in room
    -> outside the room
    -> weak
    -> strong

Monkey can
    -> grasp
    -> not grasp
    -> climb

Banana can be
    -> in room
    -> at ceiling

*/

% monkey and box are on the floor.
on(monkey,floor).
on(box,floor).

% both monkey and banana are in the room.
in(monkey,room).
in(banana,room).

% banana is at ceiling.
at(banana,ceiling).

% monkey is such strong that it can grasp banana and climb on the box.
strong(monkey).
canGrasp(monkey).
climb(monkey,box).

% monkey can push the box since it is strong.
push(monkey,box):-
    strong(monkey),nl,write('Monkey is strong enough.').

% monkey can push box under banana.
under(box,banana):-
    push(monkey,box),nl,write('Monkey is pushing the box.').

% monkey can reach at the banana.
canReach(monkey,banana):-
    at(banana,floor),nl,write('Banana is on the floor.');at(banana,ceiling),under(box,banana),climb(monkey,box),nl,write('Banana is at ceiling.').

% monkey can grasp the banana.
canget(monkey,banana):-
    canReach(monkey,banana),canGrasp(monkey),write('Monkey is grasping the banana.').
