male(gabriel).
male(felipe).
male(alan).
male(diego).
male(nick).
male(bruno).
female(marina).
female(lucy).
female(angela).
female(vicki).
female(carla).

parent(felipe, gabriel).
parent(felipe, marina).

parent(diego, felipe).
parent(diego, lucy).

parent(nick, felipe).
parent(nick, lucy).

parent(vicki, felipe).
parent(vicki, lucy).

parent(angela, gabriel).
parent(angela, marina).

parent(bruno, angela).
parent(bruno, alan).

parent(carla, angela).
parent(carla, alan).

father(A, B):-male(B), parent(A, B).
mother(A, B):-female(B), parent(A, B).
son(A, B):-male(B), parent(B, A).
daughter(A, B):-female(B), parent(B, A).
grandfather(A, B):-male(B), parent(A, C), parent(C, B).
grandmother(A, B):-female(B), parent(A, C), parent(C, B).
sister(A,B) :- female(A),parent(B,C),parent(A,C), A \= B.
brother(A,B) :- male(A),parent(B,C),parent(A,C), A \= B.
aunt(A,B) :- female(A),sister(A,C),(mother(B, C) ; father(B, C)).
uncle(A,B) :- male(A),brother(A,C),(mother(B, C) ; father(B, C)).
cousin(A,B) :- (uncle(C , A) ; aunt(C, A)),(father(B,C) ; mother(B, C)).

