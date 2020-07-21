class Player
  attr_reader :id , :score
  def initialize(id)
    @id = id
    @score = 3
  end

  def decrease_score()
    @score -= 1
  end
end
