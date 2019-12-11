#!/usr/bin/env ruby

require ('./lib/rps.rb')

puts 'Make your move, player 1.'
hand1 = gets.chomp
puts 'Your turn, player 2.'
hand2 = gets.chomp
puts "Player 1: #{hand1}"
puts "Player 2: #{hand2}"

game = RPS.new()
if game.wins?(hand1, hand2) == true
   puts "Player 1 Wins!"
else puts "Player 2 wins!"
end
