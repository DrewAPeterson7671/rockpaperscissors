#!/usr/bin/env ruby

require ('./lib/rps.rb')
require 'io/console'

game = RPS.new()

puts `clear`
puts "=================================="
puts "=================================="
puts "  Rock! Paper!  and SCISSORS!!!!"
puts "=================================="
puts "=================================="
puts "Enter 1 to play the computer!"
puts "Enter 2 to play a friend!"

num_players = gets.chomp
puts "**********************************"
puts "let's get ready to RUMMMMBBBBLLLLEE"
puts "**********************************"

if num_players == "1"
  game.play_computer
elsif num_players == "2"
  game.hotseat
else
  puts "wha..???"
end

puts "=================================="
puts "=================================="
