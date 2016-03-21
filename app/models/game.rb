class Game
  attr_reader :turn, :score

  def initialize
    @@current_game = self
    @turn = %w(shoot save).sample
    @score = 0
  end

  def self.current_game
    @@current_game
  end

  def shoot(coor)
    return 'wrong action' unless turn == 'shoot'
    coor
  end
end
