#!/usr/bin/env ruby

require ('./lib/rps.rb')

puts "**********************************"
puts 'Make your move, player 1.'
hand1 = gets.chomp
# puts 'Your turn, player 2.'
# hand2 = gets.chomp
puts "Player 1: #{hand1}"
# puts "Player 2: #{hand2}"

game = RPS.new()

puts game.computer_move
hand2 = game.computer_move

puts "**********************************"

if hand1 == hand2
  puts "This is a draw. :-("
elsif game.wins?(hand1, hand2) == true
  puts "Player 1 wins!"
else puts "Player 2 wins!"
end

puts "**********************************"
