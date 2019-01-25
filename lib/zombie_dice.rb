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
     contar_balas(valor)
     return traducir(valor)
  end
 
	def obtener_valor_dado
		random = Random.new 
		return random.rand(1..6) 
	end
	
	def contar_balas dado
	  if dado == 4 || dado == 1
			@vidas -= 1
		end 
	end
	 
	def traducir valor
	 resultados = ['bala', 'cerebro', 'huellita', 'bala', 'cerebro', 'huellita']  
	 return resultados[valor -1] 		
	end
	 
end
