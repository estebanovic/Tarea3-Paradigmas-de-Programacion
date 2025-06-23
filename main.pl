
% Predicado principal
main :-
    write('Sistema de diagnóstico de Diabetes Tipo II'), nl,
    write('-----------------------------------------'), nl, nl,
    menu.

% Menú de opciones
menu :-
    repeat,
    write('Opciones:'), nl,
    write('1. Realizar cuestionario'), nl,
    write('2. Salir'), nl,
    write('Seleccione una opción (1-2): '),
    read(Opcion).
