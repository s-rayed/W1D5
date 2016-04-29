def generate_question
  @rand_1 = rand(1..10)
  @rand_2 = rand(1..10)
  puts "What is #{@rand_1} + #{@rand_2}"
  @answer = @rand_1 + @rand_2
end

def promp_player_for_answer

  @user_answer = gets.chomp.to_i

end

def verify_answer

  if @answer == @user_answer
    player.add_point
  else
    player.lose_life
  end

end


