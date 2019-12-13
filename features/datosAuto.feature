Feature:
    Como Jugador
    Quiero Definir datos de inicio para el auto
    Para jugar empezando con esos datos
    Scenario:
        Given visito la pagina principal
        And ingreso "1" en el campo "posx1"
        When presiono el boton "Empezar A jugar"
        Then deberia visitar el tablero 
    Scenario:
        Given visito la pagina principal
        And ingreso "1" en el campo "posy1"
        When presiono el boton "Empezar A jugar"
        Then deberia visitar el tablero 
