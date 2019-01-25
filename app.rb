require 'sinatra'
require './lib/zombie_dice.rb'


get '/' do
	erb :home
end

get '/juego' do
	@@zombie = ZombieDice.new
	erb :juego
end

post '/juego' do
	@resultado = @@zombie.tirar_dado
	erb :juego
end
