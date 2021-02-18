require 'sinatra/base'


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
    p session
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :confirmation
  end

  post '/names' do
    p params
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    p session
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    p @player_1_name
    p @player_2_name
    erb :play
  end

  run! if app_file == $0
end
