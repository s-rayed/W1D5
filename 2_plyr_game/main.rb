require 'pry'
require_relative 'player.rb'

puts "What is player 1's name?"
p1_name = gets.chomp
player_1 = Player.new(p1_name)
puts "Ok ill call player 1 #{p1_name}"
puts "What is player 2's name?"
p2_name = gets.chomp
player_2 = Player.new(p2_name)
puts "Ok ill call player 2 #{p2_name}"

def first_question
  rand_1 = rand(1..10)
  rand_2 = rand(1..10)
  puts "What is #{rand_1} + #{rand_2}"
  answer = rand_1 + rand_2
  user_answer = gets.chomp.to_i
  if user_answer == answer
    player_1.response(true)
  else
    player_1.response(false)
  end
end

def second_question

  

end


