class Game
  attr_reader :id
  attr_accessor :turn, :score, :round

  @@games = []

  def initialize
    @@games << self
    @id = @@games.size
    @turn = %w(shoot save).sample
    @score = 0
    @round = 0
  end

  def self.games
    @@games
  end

  def self.find_game(id)
    games[id.to_i - 1]
  end

  def shoot(args)
    return 'wrong action' unless turn == 'shoot'
    penalty = Penalty.new(args)
    update_score(penalty.shoot)
    self.turn = 'save'
    self
  end

  def save(args)
    return 'wrong action' unless turn == 'save'
    penalty = Penalty.new(args)
    update_score(penalty.save)
    self.turn = 'shoot'
    self
  end

  private

  def update_score(shot)
    self.round += 1
    shot ? self.score += 1 : self.score -= 1
  end

end
