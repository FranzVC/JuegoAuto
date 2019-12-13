Feature:
    Como Jugador
    Quiero Definir datos de inicio para el auto
    Para jugar empezando con esos datos
    Scenario:
        Given visito la pagina principal
        And ingreso "1" en el campo "posx"
        When presiono el boton "Empezar A jugar"
        Then deberia "visitar pagina tablero" 

