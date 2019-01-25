Feature: Juego Zombie Dice

Scenario: 
	Given voy a la página de inicio
	Then veo el link "Empezar juego"

Scenario: 
	Given voy a la página del juego
	Then veo el boton "Tirar dados"

Scenario:
	Given voy a la página del juego
	When doy click en "Tirar dados"
	Then el resultado se muestra
	
Scenario:
	Given voy a la página del juego
	When doy click en "Tirar dados"
	Then veo un ícono asociado al resultado
	

