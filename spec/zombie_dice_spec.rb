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
	
	it "calcular vida al sacar una bala" do
		zombie = ZombieDice.new
		indice_bala = 4
		zombie.tirar_dado(indice_bala)  
		
		expect(zombie.resistencia).to eq 2  
	end
	
	it "calcular vida al sacar un cerebro" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		zombie.tirar_dado(indice_cerebro) 
		
		expect(zombie.resistencia).to eq 3
	end
	
	it "calcular vida al sacar una huellita" do
		zombie = ZombieDice.new
		indice_huellita = 3
		zombie.tirar_dado(indice_huellita) 
		
		expect(zombie.resistencia).to eq 3 
	end
	
	it "calcular cerebros al sacar una bala" do
		zombie = ZombieDice.new
		indice_bala = 4
		zombie.tirar_dado(indice_bala)  
		
		expect(zombie.cerebros).to eq 0  
	end
	
	it "calcular cerebros al sacar un cerebro" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		zombie.tirar_dado(indice_cerebro) 
		
		expect(zombie.cerebros).to eq 1
	end
	
	it "calcular cerebros al sacar una huellita" do
		zombie = ZombieDice.new
		indice_huellita = 3
		zombie.tirar_dado(indice_huellita) 
		
		expect(zombie.cerebros).to eq 0 
	end
	 
	it "al llegar a 0 resistencia esta inactivo" do
		zombie = ZombieDice.new
		indice_bala = 1
		zombie.tirar_dado(indice_bala) 
		zombie.tirar_dado(indice_bala) 
		zombie.tirar_dado(indice_bala) 
		
		expect(zombie.es_activo).to eq false 
	end
	
	it "al llegar a 5 cerebros deberia estar inactivo" do
	  zombie = ZombieDice.new
		indice_cerebro = 2
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
				
		expect(zombie.es_activo).to eq false 
	end
	
	it "al ganar deberia ver mensaje ganaste" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		zombie.tirar_dado(indice_cerebro) 
		
		expect(zombie.resultado_juego).to eq "Ganaste"
	end	
	
	it "al perder deberia ver mensaje perdiste" do
		zombie = ZombieDice.new
		indice_bala = 1
		zombie.tirar_dado(indice_bala) 
		zombie.tirar_dado(indice_bala) 
		zombie.tirar_dado(indice_bala) 	
		
		expect(zombie.resultado_juego).to eq "Perdiste"
	end
	
	it "al recibir una bala deberia devolver el mensaje" do
		zombie = ZombieDice.new
		indice_bala = 1
		tiro = zombie.tirar_dado(indice_bala) 
		
		expect(zombie.resultado_tiro(tiro)).to eq "Has recibibo una bala...auch. Tu resistencia disminuye en 1"
	end
	  
end
