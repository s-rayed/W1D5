class Game

  attr_accessor :num

  def initialize(player_1, player_2)
    @num = 0
    @player_1 = player_1
    @player_2 = player_2
  end

  def turn
    q = Question.new
    puts q.output
    user_answer = gets.chomp.to_i
    player = @num.odd? ? @player_1 : @player_2

    if q.verify_answer?(user_answer)
      player.add_score
      puts "You have #{player.score} points and #{player.lives} lives left"
    else
      player.lose_life
      puts "You have #{player.score} points and #{player.lives} lives left"   
    end
    @num += 1
  end

  def is_active?
    @player_1.is_alive? && @player_2.is_alive?
  end

end