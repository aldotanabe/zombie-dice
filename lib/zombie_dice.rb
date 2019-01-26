require "./lib/dado.rb"

class ZombieDice
	def initialize
		@resistencia = 3
		@cerebros = 0
		@es_activo = true
		@cantidad_cerebros = 10
		@resultado_dados = [] 
		@mensajes = {"bala" => "Auch..tu resistencia disminuye.",
		            "huellita" => "Uy...se escapo.",
		            "cerebro" => "Cerebro...yummy."}
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
 
  def tirar_dados valor_mock = 0, color_mock = 0
  	dados = obtener_dados(color_mock)
  	@resultado_dados.clear
    dados.each do |dado|
      @resultado_dados.push(procesar_dado(dado,valor_mock)) 
    end
    return @resultado_dados
  end
  
  def procesar_dado dado, valor_mock
    resultado = dado.lanzar(valor_mock)
    contar_resistencia(resultado["icono"])
    contar_cerebros(resultado["icono"])
    actualizar_estado
    return resultado
  end
  
  def obtener_dados color_mock
    dados = []
    dado1 = color_mock == 0 ? Dado.new : Dado.new(color_mock) 		
 		dados.push(dado1)
 		dado2 = color_mock == 0 ? Dado.new : Dado.new(color_mock) 
 		dados.push(dado2)
  	return dados
  end   
  
	def contar_resistencia icono
	  if icono == "bala"
			@resistencia -= 1
		end
		
		if @resistencia < 0
			@resistencia = 0
		end 
	end
	 
	def actualizar_estado
	  if @resistencia == 0 || @cerebros == @cantidad_cerebros
			 @es_activo = false
			 @resultado_juego = (@resistencia == 0) ? "Perdiste" : "Ganaste"
		end						 
	end
	
	def contar_cerebros icono
	  if icono == "cerebro"
			@cerebros += 1
		end
		
		if @cerebros > @cantidad_cerebros
			@cerebros = @cantidad_cerebros
		end
	end
 	
	def resultado_tiro
		tiro1 = @resultado_dados[0]["icono"]
		tiro2 = @resultado_dados[1]["icono"]
		
		if tiro1 == tiro2
		 	 return @mensajes[tiro1]
	  end
	  return @mensajes[tiro1] +"<br>"+ @mensajes[tiro2]
	end
		 
end
