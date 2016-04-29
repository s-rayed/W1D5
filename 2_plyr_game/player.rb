class Player

  attr_reader :name
  attr_accessor :score, :life

  def initialize(name, score=0, life=3)
    @name = name
    @score = 0
    @lives = 3
  end

  def response(x)

    if x == true
      @score += 1
    else
      @lives -= 1
    end

  end

end