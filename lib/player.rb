

class Player

  attr_reader :name, :health, :last_move

  def initialize(name, health=100)
    @name = name
    @health = health
    @last_move = nil
  end

  def take_hit
    @health -= 10
  end

  def hit(player)
    player.take_hit
    @last_move = :attack
  end


end
