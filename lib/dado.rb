class Dado

	def initialize tipo_dado
		@tipo_dado = tipo_dado
		
		dado_verde = ["bala", "cerebro", "huellita", "cerebro", "cerebro", "huellita"]
		dado_amarillo = ["bala", "cerebro", "huellita", "bala", "cerebro", "huellita"]
		@stack_dados = {0 => dado_verde,
										1 => dado_amarillo}
	end
	
	def valores
	 return @stack_dados[@tipo_dado]
	end

	def obtener_valor
		random = Random.new 
		return random.rand(1..6) 
	end
	
	def traducir numero
	 return valores[numero -1] 		
	end
	 
end
