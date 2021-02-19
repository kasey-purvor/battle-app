require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    p params
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    p @player_1_name
    p @player_2_name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $game.attack($player_2)
    erb :attack
  end



  run! if app_file == $0
end
