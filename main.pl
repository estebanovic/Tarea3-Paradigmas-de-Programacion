
% Hechos: peso_ideal(Sexo, AlturaMin, AlturaMax, PesoMin, PesoMax)
peso_ideal(mujer, 144, 147, 49, 55).
peso_ideal(mujer, 148, 150, 50, 56).
peso_ideal(mujer, 150, 152, 51, 57).
peso_ideal(mujer, 153, 155, 52, 59).
peso_ideal(mujer, 156, 157, 54, 60).
peso_ideal(mujer, 159, 160, 55, 61).
peso_ideal(mujer, 161, 163, 56, 63).
peso_ideal(mujer, 164, 165, 58, 64).
peso_ideal(mujer, 166, 168, 59, 65).
peso_ideal(mujer, 169, 170, 60, 67).
peso_ideal(mujer, 171, 173, 62, 68).
peso_ideal(mujer, 174, 175, 63, 70).
peso_ideal(mujer, 176, 178, 64, 71).
peso_ideal(mujer, 179, 180, 66, 72).
peso_ideal(mujer, 181, 183, 68, 74).

peso_ideal(hombre, 156, 157, 59, 64).
peso_ideal(hombre, 158, 160, 60, 65).
peso_ideal(hombre, 161, 163, 61, 66).
peso_ideal(hombre, 164, 165, 62, 67).
peso_ideal(hombre, 166, 168, 63, 68).
peso_ideal(hombre, 169, 170, 64, 71).
peso_ideal(hombre, 171, 173, 66, 71).
peso_ideal(hombre, 174, 175, 66, 73).
peso_ideal(hombre, 176, 178, 68, 74).
peso_ideal(hombre, 179, 180, 69, 75).
peso_ideal(hombre, 181, 183, 70, 77).
peso_ideal(hombre, 184, 185, 72, 79).
peso_ideal(hombre, 185, 187, 74, 81).
peso_ideal(hombre, 187, 189, 75, 83).
peso_ideal(hombre, 190, 191, 77, 85).

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
    (Opcion == 1 -> menu_peso_ideal, fail;
     Opcion == 2 -> menu_imc, fail;
     Opcion == 3 -> menu_imc_edad_sexo, fail;
     Opcion == 4 -> write('Gracias por usar el sistema. Adiós.'), nl, !, fail;
     write('Opción inválida. Intente de nuevo.'), nl, fail).

menu_peso_ideal :-
    write('--- PESO IDEAL POR ALTURA ---'), nl,
    write('Ingrese altura en cm (144-191): '),
    read(Altura),
    write('Ingrese sexo (hombre/mujer): '),
    read(Sexo),
    buscar_peso_ideal(Sexo, Altura, PesoMin, PesoMax),
    write('RESULTADO:'), nl,
    write('Su peso ideal está entre '), write(PesoMin),
    write(' y '), write(PesoMax), write(' kg'), nl.

menu_imc :-
    write('--- IMC TRADICIONAL ---'),
    write('Ingrese peso en kg: '),
    read(Peso),
    write('Ingrese altura en cm: '),
    read(Altura),
    IMC is Peso / ((Altura / 100) * (Altura / 100)),
    write('RESULTADO:'), nl,
    format('IMC: ~2f~n', [IMC]),
    evaluar_imc_tradicional(IMC), nl.

menu_imc_edad_sexo :-
    write('//TODO: IMC').

buscar_peso_ideal(Sexo, Altura, PesoMin, PesoMax) :-
    peso_ideal(Sexo, AlturaMin, AlturaMax, PesoMin, PesoMax),
    Altura >= AlturaMin,
    Altura =< AlturaMax.

evaluar_imc_tradicional(IMC) :-
    ( IMC < 18.5 ->
        write('Estás por debajo de tu peso ideal. Deberías subir algo de peso.')
    ; IMC >= 18.5, IMC < 25 ->
        write('¡Felicidades! Estás en tu peso ideal.')
    ; IMC >= 25, IMC < 30 ->
        write('Tienes sobrepeso. Podrías bajar entre 2 y 5 kg.')
    ; IMC >= 30 ->
        write('Estás en obesidad. Es recomendable adoptar hábitos más saludables.')
    ).