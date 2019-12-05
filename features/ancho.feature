Feature:
    Como Jugador
    Quiero Definir el ancho del tablero
    Para jugar en esas dimensiones
    Scenario:
        Given visito la pagina principal
        And ingreso ancho "5" en el campo "ancho"
        When presiono el boton "Guardar"
        Then deberia ver  "El ancho es 5"

    Scenario:
        Given visito la pagina principal
        And ingreso ancho "" en el campo "ancho"
        When presiono el boton "Guardar"
        Then deberia ver  "El ancho es "