require "./lib/dado.rb"

describe "Dado" do
	
	it "obtener dado fácil" do
		dado = Dado.new 1
		expect(dado.valores).to eq ['bala', 'cerebro', 'huellita', 'cerebro', 'cerebro', 'huellita']
	end
	
	it "obtener dado medio" do
		dado = Dado.new 2
		expect(dado.valores).to eq ["cerebro", "huellita", "cerebro", "huellita", "cerebro", "huellita"]
	end
	
	it "obtener dado dificil" do
		dado = Dado.new 3
		expect(dado.valores).to eq ["bala", "cerebro", "bala", "cerebro", "huellita", "bala"]
	end
	
	it "al lanzar el dado obtener color y resultado" do
		dado = Dado.new 1
		numero = 3
		tiro = dado.obtener_resultado(numero)
		expect(tiro["color"]).to eq "verde"
		expect(tiro["icono"]).to eq "huellita"
	end

	it "obtener valor del dado y retorna un valor de 1 a 6" do
		dado = Dado.new 1
		
		resultado = dado.obtener_valor
		
		expect(resultado).to be > 0
		expect(resultado).to be < 7	
	end
	
	it "traducir valor del dado verde" do
		dado = Dado.new 1
		
		resultado = dado.traducir_icono 4
		expect(resultado).to eq  "cerebro"
	end
	
	it "traducir valor del dado amarillo" do
		dado = Dado.new 2
		
		resultado = dado.traducir_icono 4
		expect(resultado).to eq  "huellita"
	end
	
end
