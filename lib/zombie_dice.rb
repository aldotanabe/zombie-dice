class ZombieDice
	def initialize
		@vidas = 3
		@balas = 0
	end

	def vidas
		return @vidas
	end
	def balas
		return @balas
	end
 
  def tirar_dado valor_mock = 0
     valor =  valor_mock == 0 ? obtener_valor_dado : valor_mock      
     contarBalas(valor)
     calcular_vida
     return traducir(valor)
  end
 
	def obtener_valor_dado
		random = Random.new 
		return random.rand(1..6) 
	end
	
	def contarBalas dado
	  if dado == 4 || dado == 1
			@balas += 1
		end 
	end
	 
	def traducir valor
	 resultados = ['bala', 'cerebro', 'huellita', 'bala', 'cerebro', 'huellita']  
	 return resultados[valor -1] 		
	end
	
	def calcular_vida
		@vidas = @vidas - @balas
		return @vidas
	end
	 
end
