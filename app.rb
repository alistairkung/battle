require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:health_2] = 100
    session[:attack] = false
    redirect '/play'
  end

  post '/attack' do
    session[:health_2] -= 10
    session[:attack] = true
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @health_2 = session[:health_2]
    @attack = session[:attack]
    erb(:play)
  end

end
