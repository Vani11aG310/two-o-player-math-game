class Player
  def initialize(name)
    @name = name
    @player_health = 3
  end

  def player_health
    @player_health
  end

  def reducePlayerHealth
    @player_health -= 1
  end

  def name
    @name
  end
end