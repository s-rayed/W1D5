require 'pry'
require_relative 'player.rb'
require_relative 'questions.rb'
require_relative 'game.rb'


puts "What is player 1's name?"
p1_name = gets.chomp
player_1 = Player.new(p1_name)
puts "Ok ill call player 1 #{p1_name}"
puts "What is player 2's name?"
p2_name = gets.chomp
player_2 = Player.new(p2_name)
puts "Ok ill call player 2 #{p2_name}"


g = Game.new(player_1, player_2)

while g.is_active?
  g.turn
end