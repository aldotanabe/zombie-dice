require "./lib/zombie_dice.rb"
require "./lib/dado.rb"
describe "Juego Zombie Dice" do

  it "al iniciar tienes 3 resistencia" do
		zombie = ZombieDice.new
		
		resultado = zombie.resistencia
		
		expect(resultado).to eq 3
	end
	
	
	it "al iniciar el juego deberia estar activo" do
		zombie = ZombieDice.new
		 
		expect(zombie.es_activo).to eq true 
	end
	
	it "calcular resistencia al sacar tres balas" do
		zombie = ZombieDice.new 
		indice_bala = 1
		indice_verde = 1

		zombie.tirar_dados(indice_bala,indice_verde)  
		
		expect(zombie.resistencia).to eq 0 
	end
	
	it "calcular resistencia al sacar tres cerebros" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		indice_verde = 1
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		
		expect(zombie.resistencia).to eq 3
	end
	
	it "calcular resistencia al sacar dos huellitas" do
		zombie = ZombieDice.new
		indice_huellita = 3
		indice_verde = 1
		zombie.tirar_dados(indice_huellita,indice_verde) 
		
		expect(zombie.resistencia).to eq 3 
	end
	
	it "calcular cerebros al sacar dos balas" do
		zombie = ZombieDice.new
		indice_bala = 1
		indice_verde = 1
		zombie.tirar_dados(indice_bala,indice_verde)  
		
		expect(zombie.cerebros).to eq 0  
	end
	
	it "calcular cerebros al sacar tres cerebros" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		indice_verde = 1
		zombie.tirar_dados(indice_cerebro) 
		
		expect(zombie.cerebros).to eq 3
	end
	
	it "calcular cerebros al sacar dos huellitas" do
		zombie = ZombieDice.new
		indice_huellita = 3
		indice_verde = 1
		zombie.tirar_dados(indice_huellita,indice_verde) 
		
		expect(zombie.cerebros).to eq 0 
	end
	 
	it "al llegar a 0 resistencia esta inactivo" do
		zombie = ZombieDice.new
		indice_bala = 1
		indice_verde = 1
		zombie.tirar_dados(indice_bala,indice_verde) 
		zombie.tirar_dados(indice_bala,indice_verde) 
		zombie.tirar_dados(indice_bala,indice_verde) 
		
		expect(zombie.es_activo).to eq false 
	end
	
	it "al llegar a 10 cerebros deberia estar inactivo" do
	  zombie = ZombieDice.new
		indice_cerebro = 2
		indice_verde = 1
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde)
				
		expect(zombie.es_activo).to eq false 
	end
	
	it "al ganar deberia ver mensaje ganaste" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		indice_verde = 1
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde)
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde) 
		zombie.tirar_dados(indice_cerebro,indice_verde)
		
		expect(zombie.resultado_juego).to eq "Ganaste"
	end	
	
	it "al perder deberia ver mensaje perdiste" do
		zombie = ZombieDice.new
		indice_bala = 1
		indice_verde = 1
		zombie.tirar_dados(indice_bala,indice_verde) 
		zombie.tirar_dados(indice_bala,indice_verde) 
		zombie.tirar_dados(indice_bala,indice_verde) 	
		
		expect(zombie.resultado_juego).to eq "Perdiste"
	end
	
	it "al recibir dos balas deberia devolver el mensaje" do
		zombie = ZombieDice.new
		indice_bala = 1
		indice_verde = 1
		tiros = zombie.tirar_dados(indice_bala,indice_verde) 
		
		expect(zombie.resultado_tiro).not_to be ""  
	end
	  
end
