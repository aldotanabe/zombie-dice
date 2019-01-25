class ZombieDice
	def initialize
		@vidas = 3
	end

	def vidas
		return @vidas
	end

	def tirar_dado
		random = Random.new
		
		return random.rand(1..6)
	end
	
	def traducir valor
	 resultados = ['bala', 'cerebro', 'huellita', 'bala', 'cerebro', 'huellita']  
	 return resultados[valor -1] 		
	end
	 
end
