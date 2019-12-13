Feature:
    Como Jugador
    Quiero Definir datos de inicio para el auto
    Para jugar empezando con esos datos
    Scenario:
        Given visito la pagina principal
        And ingreso nombre "salma" en el campo "autos"
        And ingreso pos X "1" en el campo "posicion en X" 
        And ingreso pos Y "1" en el campo "posicion en Y"
        When presiono el boton "Empezar A Jugar"
        Then deberia visitar pagina formulario
