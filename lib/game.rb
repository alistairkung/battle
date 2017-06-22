
require_relative "player"

class Game

  attr_reader :player_two, :player_one

  def initialize(player_one = Player.new(name, health), player_two = Player.new(name, health))
    @player_one = player_one
    @player_two = player_two
  end

  def attack_player_two
    @player_two.take_hit
    @player_one.last_move = :attack
  end

end
