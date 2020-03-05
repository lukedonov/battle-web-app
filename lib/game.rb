class Game
  attr_reader :turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @index = 1
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def current_victim
    @players[@index]
  end

  def current_attacker
     if @index == 1
      @players[0]
     elsif @index == 0
      @players[1]
     end
    # @players[@index]

  end

  def attack(player)
    player.receive_damage
    change_turn
  end

  def change_turn
    @index = 1 if @index == 0
    @index = 0 if @index == 1
  end
end