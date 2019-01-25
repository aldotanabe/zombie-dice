require "./lib/dado.rb"

describe "Dado" do
	
	it "obtener dado fácil" do
		dado = Dado.new 0
		expect(dado.valores).to eq ['bala', 'cerebro', 'huellita', 'cerebro', 'cerebro', 'huellita']
	end
	
	it "obtener dado medio" do
		dado = Dado.new 1
		expect(dado.valores).to eq ['bala', 'cerebro', 'huellita', 'bala', 'cerebro', 'huellita']
	end

	it "obtener valor del dado y retorna un valor de 1 a 6" do
		dado = Dado.new 0
		
		resultado = dado.obtener_valor
		
		expect(resultado).to be > 0
		expect(resultado).to be < 7	
	end
	
	it "traducir valor del dado verde" do
		dado = Dado.new 0
		
		resultado = dado.traducir 4
		expect(resultado).to eq  "cerebro"
	end
	
	it "traducir valor del dado amarillo" do
		dado = Dado.new 1
		
		resultado = dado.traducir 4
		expect(resultado).to eq  "bala"
	end
	
end
