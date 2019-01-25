require 'sinatra'
require './lib/zombie_dice.rb'


get '/' do
	@@zombie = ZombieDice.new
	erb :home
end

post '/' do
	@resultado = @@zombie.tirar_dado 
	erb :home	
end
