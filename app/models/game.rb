class Game
  attr_accessor :turn, :score, :round

  def initialize
    @@current_game = self
    @turn = %w(shoot save).sample
    @score = 0
    @round = 0
  end

  def self.current_game
    @@current_game
  end

  def shoot(args)
    return 'wrong action' unless turn == 'shoot'
    penalty = Penalty.new(args)
    update_score(penalty.shoot)
    self.turn = 'save'
    self
  end

  private

  def update_score(shot)
    self.round += 1
    self.score += 1 if shot
  end
end
