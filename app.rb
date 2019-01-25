require 'sinatra'
require './lib/zombie_dice.rb'


get '/' do
	erb :home
end

get '/juego' do
	@@zombie = ZombieDice.new
	@vidas = @@zombie.vidas
	@cerebros = @@zombie.cerebros
	erb :juego
end

post '/juego' do
	@resultado = @@zombie.tirar_dado
	@vidas = @@zombie.vidas
	@cerebros = @@zombie.cerebros
	erb :juego
end
