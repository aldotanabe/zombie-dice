require "./lib/zombie_dice.rb"

describe "Juego Zombie Dice" do
  it "al iniciar tienes 3 vidas" do
		zombie = ZombieDice.new
		
		resultado = zombie.vidas
		
		expect(resultado).to eq 3
	end
	
	it "tirar dado y retorna un valor de 1 a 6" do
		zombie = ZombieDice.new
		
		resultado = zombie.tirar_dado
		
		expect(resultado).to be > 0
		expect(resultado).to be < 7	
	end
	
	it "traducir valor del dado" do
		zombie = ZombieDice.new
		
		resultado = zombie.traducir 4
		
		expect(resultado).to eq  "Bala"
	end
	
	#it "calcular vida al sacar una bala" do
		#zombie = ZombieDice.new
		
		#resultado = zombie.calcular_vida
		
		#expect(resultado).to eq 2 
	#end
	
	#it "calcular vida al sacar una huellita" do
		#zombie = ZombieDice.new
		
		#resultado = zombie.calcular_vida
		
		#expect(resultado).to eq 3 
	#end
	
	#it "calcular vida al sacar un cerebro" do
		#zombie = ZombieDice.new
		
		#resultado = zombie.calcular_vida
		
		#expect(resultado).to eq 3
	#end
	
	
end
