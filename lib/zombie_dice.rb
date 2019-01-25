class ZombieDice
	def initialize
		@vidas = 3
		@cerebros = 0
	end

	def vidas
		return @vidas
	end
	def cerebros
		return @cerebros
	end
 
  def tirar_dado valor_mock = 0
     valor_dado =  valor_mock == 0 ? obtener_valor_dado : valor_mock      
     contar_vidas(valor_dado)
     contar_cerebros(valor_dado)
     return traducir(valor_dado)
  end
 
	def obtener_valor_dado
		random = Random.new 
		return random.rand(1..6) 
	end
	
	def contar_vidas valor_dado
	  if valor_dado == 4 || valor_dado == 1
			@vidas -= 1
		end 
	end
	
	
	def contar_cerebros valor_dado
	  if valor_dado == 2 || valor_dado == 5
			@cerebros += 1
		end 
	end
	 
	def traducir valor_dado
	 resultados = ['bala', 'cerebro', 'huellita', 'bala', 'cerebro', 'huellita']  
	 return resultados[valor_dado -1] 		
	end
	 
end
