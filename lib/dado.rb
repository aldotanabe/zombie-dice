class Dado
	
	
	
	
	def initialize tipo_dado
		@tipo_dado = tipo_dado
		@stack_dados = {0 => ["bala", "cerebro", "huellita", "cerebro", "cerebro", "huellita"],
										1 => ["bala", "cerebro", "huellita", "bala", "cerebro", "huellita"]}
		#@dado_verde = ["bala", "cerebro", "huellita", "cerebro", "cerebro", "huellita"]
		#@dado_amarillo = ["bala", "cerebro", "huellita", "bala", "cerebro", "huellita"]
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
