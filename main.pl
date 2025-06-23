% Archivo: main.pl
main:-
    write('wekito').

% Hechos
saludar(mundo).
saludar(amigo).

% Una regla que act√∫a como punto de entrada o "main"
inicio :-
    write('°Bienvenido al programa principal!'), nl,
    write('Puedes hacer consultas como: saludar(X).'), nl.