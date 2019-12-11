
class RPS

  def computer_move
    rps_array = ["rock", "paper", "scissors"].sample
  end

  def hotseat
    puts 'Make your move, player 1.'
    hand1 = STDIN.noecho(&:gets).chomp.downcase()
    puts 'Your turn, player 2.'
    hand2 = STDIN.noecho(&:gets).chomp.downcase()
    puts "Player 1: #{hand1}"
    puts "Player 2: #{hand2}"
    self.resolution(hand1, hand2)

  end

  def play_computer
    puts 'Make your move, player 1.'
    hand1 = STDIN.noecho(&:gets).chomp.downcase()
    hand2 = self.computer_move
    puts "Player 1: #{hand1}"
    puts "Player 2: #{hand2}"
    self.resolution(hand1, hand2)
  end

  def wins?(hand1, hand2)
    if (hand1 == 'rock') & (hand2 == 'scissors')
      true
    elsif (hand1 == 'rock') & (hand2 == 'paper')
      false
    elsif (hand1 == 'paper') & (hand2 == 'rock')
      true
    elsif (hand1 == 'paper') & (hand2 == 'scissors')
      false
    elsif (hand1 == 'scissors') & (hand2 == 'rock')
      false
    elsif (hand1 == 'scissors') & (hand2 == 'paper')
      true
    elsif hand1 == hand2
      false
    end
  end

  def resolution(hand1, hand2)
    if hand1 == hand2
      puts "This is a draw. :-("
    elsif self.wins?(hand1, hand2) == true
      puts "Player 1 wins!"
    else puts "Player 2 wins!"
    end
  end


end
