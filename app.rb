require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Helloo Battle'
  end

  run! if app_file == $0
end
