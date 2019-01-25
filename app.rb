require 'sinatra'
require './lib/zombie_dice.rb'


get '/' do
	@@zombie = ZombieDice.new
	erb :home
end

post '/' do
	@resultado = @@zombie.traducir(@@zombie.tirar_dado)
	erb :home	
end
