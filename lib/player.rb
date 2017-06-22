

class Player

  attr_reader :name, :health

  def initialize(name, health=100)
    @name = name
    @health = health
  end

  def take_hit
    @health -= 10
  end

  def hit(player)
    player.take_hit
  end

end
