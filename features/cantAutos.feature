Feature:
    Como Jugador
    Quiero Definir cantidad de autos
    Para jugar con ellos
    Scenario:
        Given visito la pagina principal
        And ingreso cantidad de autos "1" en el campo "autos"
        When presiono el boton "crear"
        Then deberia ver  "Auto 1 "
