
require_relative "player"

class Game

  attr_reader :player_two, :player_one, :last_move, :turn

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def initialize(player_one = Player.new(name, health), player_two = Player.new(name, health))
    @player_one = player_one
    @player_two = player_two
    @last_move = nil
    @turn = 1
  end

  def attack_player_one
    @player_one.take_hit
    @last_move = :player_two_attack
    @turn = 1
  end

  def attack_player_two
    @player_two.take_hit
    @last_move = :player_one_attack
    @turn = 2
  end

end
