require 'sinatra'
require_relative "./lib/player"
require_relative "./lib/game"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  post '/player_one_attack' do
    @game.attack_player_two
    redirect('/play')
  end

  post '/player_two_attack' do
    @game.attack_player_one
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

end
