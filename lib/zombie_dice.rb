class ZombieDice
	def initialize
		@resistencia = 3
		@cerebros = 0
		@es_activo = true
		@cantidad_cerebros = 5
	end

	def resistencia
		return @resistencia
	end
	
	def cerebros
		return @cerebros
	end
	
	def es_activo
    return	@es_activo
	end
	
	def resultado_juego
	  return @resultado_juego
	end  
 
  def tirar_dado valor_mock = 0
     valor_dado =  valor_mock == 0 ? obtener_valor_dado : valor_mock      
     contar_resistencia(valor_dado)
     contar_cerebros(valor_dado)
     actualizar_estado
     return traducir(valor_dado)
  end
 
	def obtener_valor_dado
		random = Random.new 
		return random.rand(1..6) 
	end
	
	def contar_resistencia valor_dado
	  if valor_dado == 4 || valor_dado == 1
			@resistencia -= 1
		end 
	end
	 
	def actualizar_estado
	  if @resistencia == 0 || @cerebros == @cantidad_cerebros
			 @es_activo = false
			 @resultado_juego = (@resistencia == 0) ? "Perdiste" : "Ganaste"
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
	 
	def traer_mensaje 
	  @cerebros == @cantidad_cerebros 
	end 
end
