require 'sinatra/base'
require 'player'


class Battle < Sinatra::Base
  enable :sessions
  # get '/' do
    # "Testing infrastructure working!"
  # end

  get '/' do
    p params
    erb :index
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $player_2.hit
    erb :attack
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    p @player_1_name
    p @player_2_name
    erb :play
  end

  run! if app_file == $0
end
