class ZombieDice
	def tirar_dado
		random = Random.new
		
		return random.rand(1..6)
	end
end
