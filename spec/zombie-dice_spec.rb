require "./lib/zombie-dice.rb"

describe "Juego Zombie Dice" do
	it "tirar dado y retorna un valor de 1 a 6" do
		zombie = ZombieDice.new
		
		resultado = zombie.tirar_dado
		
		expect(resultado).to be > 0
		expect(resultado).to be < 7	
	end
end
