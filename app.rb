require 'sinatra'
require './lib/zombie_dice.rb'


get '/' do
	erb :home
end

get '/juego' do
	@@zombie = ZombieDice.new
	@resistencia = @@zombie.resistencia
	@cerebros = @@zombie.cerebros
	@es_activo = @@zombie.es_activo
	erb :juego
end

post '/juego' do
	@resultado = @@zombie.tirar_dado
	@resistencia = @@zombie.resistencia
	@cerebros = @@zombie.cerebros
	@es_activo = @@zombie.es_activo
	@resultado_juego = @@zombie.resultado_juego
	erb :juego
end
