require "./lib/dado.rb"

class ZombieDice
	def initialize
		@resistencia = 3
		@cerebros = 0
		@es_activo = true
		@cantidad_cerebros = 5
		@resultado_dados = []
		@mensajes = {"bala" => "Has recibibo una bala...auch. Tu resistencia disminuye",
		            "huellita" => "Uy...se te escapo el humano",
		            "cerebro" => "Te has comido un cerebro...yummy"}
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
 
  def tirar_dados valor_mock = 0
  	dados = obtener_dados
  	@resultado_dados.clear
    dados.each do |dado|
      @resultado_dados.push(procesar_dado(dado,valor_mock)) 
    end
    return @resultado_dados
  end
  
  def procesar_dado dado, valor_mock
    valor_dado = dado.obtener_valor(valor_mock)
    contar_resistencia(valor_dado)
    contar_cerebros(valor_dado)
    actualizar_estado
    return dado.traducir(valor_dado)
  end
  
  def obtener_dados  
  	return [Dado.new(0),Dado.new(1)]
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
 	
	def resultado_tiro
		tiro1 = @resultado_dados[0]
		tiro2 = @resultado_dados[1]
		
		if tiro1 != tiro2
		 	mensaje = "#{ @mensajes[tiro1] } y #{ @mensajes[tiro2] }"
	  end
	  return mensaje
	end
		 
end
