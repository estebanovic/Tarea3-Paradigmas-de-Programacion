
% Predicado principal
main :-
    write('=== SISTEMA NUTRICIONAL - ==='), nl,nl,
    menu.

% Menú de opciones
menu :-
    repeat,
    write('Opciones:'), nl,
    write('1. Calcular el peso ideal'), nl,
    write('2. Calcular IMC tradicional'), nl,
    write('3. CalcuCalcular IMC por edad y sexo'), nl,
    write('4. Salir'), nl,
    write('Seleccione una opción (1-4): '),
    read(Opcion),
    (Opcion == 1 -> calcularPesoIdeal, fail;
     Opcion == 2 -> calcularIMC, fail;
     Opcion == 3 -> calcularIMCEdadSexo, fail;
     Opcion == 4 -> write('Gracias por usar el sistema. Adiós.'), nl, !, fail;
     write('Opción inválida. Intente de nuevo.'), nl, fail).

calcularPesoIdeal :-
    write('//TODO: Peso ideal').

calcularIMC :-
    write('//TODO: IMC').

calcularIMCEdadSexo :-
    write('//TODO: IMC').