Feature: Juego Zombie Dice

Scenario: 
	Given voy a la página de inicio
	Then veo el link "Empezar juego"

Scenario: 
	Given voy a la página del juego
	Then veo el boton "Tirar dados"
	And tengo 3 resistencia
	And tengo 0 cerebros

Scenario:
	Given voy a la página del juego
	When doy click en "Tirar dados"
	Then los resultados se muestran
	
Scenario:
	Given voy a la página del juego
	When doy click en "Tirar dados"
	Then veo íconos asociados a los resultados
	
#Scenario:
	#Given voy a la página del juego
	
	
	

