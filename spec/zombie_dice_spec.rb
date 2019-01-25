require "./lib/zombie_dice.rb"

describe "Juego Zombie Dice" do
  it "al iniciar tienes 3 vidas" do
		zombie = ZombieDice.new
		
		resultado = zombie.vidas
		
		expect(resultado).to eq 3
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
		indice_bala = 2
		zombie.tirar_dado(indice_bala) 
		
		expect(zombie.vidas).to eq 3
	end
	
	it "calcular vida al sacar una huellita" do
		zombie = ZombieDice.new
		indice_bala = 3
		zombie.tirar_dado(indice_bala) 
		
		expect(zombie.vidas).to eq 3 
	end
	 
end
