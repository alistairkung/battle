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
    redirect '/play'
  end

  post '/attack' do
    $player_one.hit($player_two)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_one
    @player_2 = $player_two
    erb(:play)
  end

end
