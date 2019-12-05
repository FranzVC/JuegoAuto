Feature:
    Como Jugador
    Quiero Definir posicion de inicio en el tablero
    Para partir en esa posicion y que ningun otro jugador pueda estar ahi

    Scenario:
        Given visito la pagina principal
        When presiono el boton "Guardar"
        Then deberia visitar la pagina de resultado

    Scenario:
        Given visito la pagina principal
        And ingreso posicion inicial "" en el campo "posIniX"
        And ingreso posicion inicial "" en el campo "posIniY"
        When presiono el boton "Guardar"
        Then deberia ver  "La posicion inicial es "

    Scenario:
        Given visito la pagina principal
        And ingreso posicion inicial "4" en el campo "posIniX"
        And ingreso posicion inicial "5" en el campo "posIniY"
        When presiono el boton "Guardar"
        Then deberia ver  "La posicion inicial es 4:5"

    Scenario:
        Given visito la pagina resultado
        Then deberia ver una tabla "Tablero" de 8 por 8