Feature:
    Como Jugador
    Quiero Definir el alto del tablero
    Para jugar en esas dimensiones
    Scenario:
        Given visito la pagina principal
        And ingreso alto "" en el campo "alto"
        When presiono el boton "Guardar"
        Then deberia ver  "El alto es "

    Scenario:
        Given visito la pagina principal
        And ingreso alto "5" en el campo "alto"
        When presiono el boton "Guardar"
        Then deberia ver  "El alto es 5"