require 'sinatra'
require "player"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_1])
    $player_two = Player.new(params[:player_2])
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
    @player_1 = $player_one.name
    @player_2 = $player_two.name
    @health_2 = session[:health_2]
    @attack = session[:attack]
    erb(:play)
  end

end
