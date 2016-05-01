class Question

  attr_accessor :rand_1, :rand_2

  def initialize
    @rand_1 = rand(1..10)
    @rand_2 = rand(1..10)
    @answer = @rand_1 + @rand_2

  end

  def output
    "What is #{@rand_1} + #{@rand_2}"
  end

  def verify_answer?(input)
    input == @answer
  end

end

