
% Predicado principal
main :-
    write('Sistema de diagn�stico de Diabetes Tipo II'), nl,
    write('-----------------------------------------'), nl, nl,
    menu.

% Men� de opciones
menu :-
    repeat,
    write('Opciones:'), nl,
    write('1. Realizar cuestionario'), nl,
    write('2. Salir'), nl,
    write('Seleccione una opci�n (1-2): '),
    read(Opcion).
