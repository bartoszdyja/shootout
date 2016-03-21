class Penalty
  def initialize(args)
    @coor = [args[:xy][0].to_i, args[:xy][1].to_i]
    @on_target = @coor[0].between?(0, 5) && @coor[1].between?(0, 2)
  end

  def shoot
    @coor != [rand(5), rand(3)] && @on_target
  end

  def save
    @coor == [rand(5), rand(3)] && @on_target
  end
end
