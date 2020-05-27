pria(mukti).
pria(samid).
pria(galih).
pria(deri).
pria(gamma).
pria(agung).
pria(yuti).

wanita(jajuk).
wanita(mia).
wanita(luna).
wanita(maya).

orangtua(mukti,samid).
orangtua(samid,deri).
orangtua(samid,luna).
orangtua(samid,agung).
orangtua(jajuk,deri).
orangtua(jajuk,luna).
orangtua(jajuk,agung).
orangtua(samid,galih).
orangtua(galih,mia).
orangtua(jajuk,maya).
orangtua(deri,gamma).
orangtua(maya,yuti).

anak(gamma,deri).
ayah(X,Y) :- pria(X),orangtua(X,Y).
ibu(X,Y):- wanita(X), orangtua(X,Y).

kandung(X,Y):- ayah(A,X), ayah(A,Y), ibu(I,X), ibu(I,Y),\+(X==Y).

tiri(X,Y):- orangtua(A,Y), orangtua(A,X),not(kandung(Y,X)), X\=Y.

paman(X,Y):- pria(X), kandung(X,A),ayah(A,Y).

bibi(X,Y):- wanita(X),kandung(X,A),orangtua(A,Y).

keponakan(X,Y):-anak(X,A),kandung(A,Y).

kakek(X,Y):- pria(X),orangtua(X,A),orangtua(A,Y).

cicit(X,Y):- kakek(Y,A),orangtua(A,X).

cucu(X,Y):- orangtua(A,X),orangtua(Y,A).

bukan_keponakan(X,Y):- anak(X,Z),tiri(Z,Y).


