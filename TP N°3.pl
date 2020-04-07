enemigo(nono,eeuu).
arma(misil).
americano(west).
vende(west,misil,nono).
criminal(X,W,C):-americano(X),arma(W),enemigo(C,eeuu),vende(X,W,C).

% OCTAVOS DE FINAL
partido(argentina,brasil,argentina).
partido(alemania,holanda,holanda).
partido(egipto,colombia,colombia).
partido(italia,mexico,italia).
partido(francia,belgica,francia).
partido(rusia,chile,chile).
partido(inglaterra,venezuela,venezuela).
% CUARTOS DE FINAL
partido(argentina,holanda,argentina).
partido(colombia,italia,italia).
partido(francia,chile,francia).
partido(venezuela,portugal,portugal).
% SEMIFINAL
partido(argentina,italia,argentina).
partido(francia,portugal,francia).
% FINAL
partido(argentina,francia,argentina).
% Indicamos a PROLOG cuando se gana un partido
% X le gana un partido a Y
ganador(X,Y):-partido(X,Y,X).
% Ahora, un campeon mundial, es campeon del mundo cuando ganó 4 partidos
% consecutivos desde los 8° de final
campeon(X):-ganador(E,T),ganador(E,Q),ganador(E,R),ganador(X,E).


