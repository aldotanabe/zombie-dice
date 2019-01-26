class Dado

	def initialize color_mock = 0
		@tipo_dado = obtener_color_dado(color_mock)
		dado_verde = ["bala", "cerebro", "huellita", "cerebro", "cerebro", "huellita"]
		dado_amarillo = ["bala", "cerebro", "huellita", "bala", "cerebro", "huellita"]
		dado_rojo = ["bala", "cerebro", "bala", "bala", "huellita", "bala"]
		@stack_dados = {1 => dado_verde,
										2 => dado_amarillo,
										3 => dado_rojo}
		@stack_colores = {1 => "verde",
											2 => "amarillo",
											3 => "rojo"}
	end
	
	def valores
	 return @stack_dados[@tipo_dado]
	end
	
	def obtener_color_dado valor_mock = 0
		if valor_mock == 0
			random = Random.new
			return random.rand(1..2)
		end
		return valor_mock
	end

	def obtener_valor valor_mock = 0
	  if valor_mock == 0
	    random = Random.new 
		  return random.rand(1..6)
	  end
		return valor_mock
	end
	
	def traducir_icono numero
	 return valores[numero -1] 		
	end
	
	def obtener_resultado numero
		return {"color" => @stack_colores[@tipo_dado], "icono" => traducir_icono(numero)}
	end
	
	def lanzar valor_mock = 0
	   numero = obtener_valor(valor_mock) 
	   return obtener_resultado(numero)
	end
	 
end
