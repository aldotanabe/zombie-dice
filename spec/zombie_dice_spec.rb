require "./lib/zombie_dice.rb"

describe "Juego Zombie Dice" do
  it "al iniciar tienes 3 vidas" do
		zombie = ZombieDice.new
		
		resultado = zombie.vidas
		
		expect(resultado).to eq 3
	end
	
	
	it "al iniciar el juego deberia estar activo" do
		zombie = ZombieDice.new
		 
		expect(zombie.es_activo).to eq true 
	end
	
	it "obtener valor del dado y retorna un valor de 1 a 6" do
		zombie = ZombieDice.new
		
		resultado = zombie.obtener_valor_dado
		
		expect(resultado).to be > 0
		expect(resultado).to be < 7	
	end
	
	
	it "traducir valor del dado" do
		zombie = ZombieDice.new
		
		resultado = zombie.traducir 4
		
		expect(resultado).to eq  "bala"
	end
	
	it "calcular vida al sacar una bala" do
		zombie = ZombieDice.new
		indice_bala = 4
		zombie.tirar_dado(indice_bala)  
		
		expect(zombie.vidas).to eq 2  
	end
	
	it "calcular vida al sacar un cerebro" do
		zombie = ZombieDice.new
		indice_cerebro = 2
		zombie.tirar_dado(indice_cerebro) 
		
		expect(zombie.vidas).to eq 3
	end
	
	it "calcular vida al sacar una huellita" do
		zombie = ZombieDice.new
		indice_huellita = 3
		zombie.tirar_dado(indice_huellita) 
		
		expect(zombie.vidas).to eq 3 
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
	 
	it "al llegar a 0 vidas esta inactivo" do
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
	 
end
