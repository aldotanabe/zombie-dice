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
	@dados = @@zombie.tirar_dados
	@resistencia = @@zombie.resistencia
	@cerebros = @@zombie.cerebros
	@es_activo = @@zombie.es_activo
	@resultado_juego = @@zombie.resultado_juego
	@resultado_tiro = "mock" #@@zombie.resultado_tiro
	erb :juego
end
