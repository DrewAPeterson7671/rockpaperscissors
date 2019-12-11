#!/usr/bin/env ruby

require ('./lib/rps.rb')
require 'io/console'

game = RPS.new()

puts "=================================="
puts "=================================="
puts "  Rock! Paper!  and SCISSORS!!!!"
puts "=================================="
puts "=================================="
puts "Enter 1) to play the computer!"
puts "Enter 2) to play a friend!"

num_players = gets.chomp
puts "**********************************"
puts "lets get ready to RUMMMMBBBBLLLLEE"
puts "**********************************"

if num_players == "1"
  game.play_computer
elsif num_players == "2"
  game.hotseat
else
  puts "wha..???"
end

# hand2 = gets.chomp


# puts "Player 1: #{@hand1}"
# puts "Player 2: #{@hand2}"

# hand2 = game.computer_move


# if hand1 == hand2
#   puts "This is a draw. :-("
# elsif game.wins?(hand1, hand2) == true
#   puts "Player 1 wins!"
# else puts "Player 2 wins!"
# end

puts "=================================="
puts "=================================="
