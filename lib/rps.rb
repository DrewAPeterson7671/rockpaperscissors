
class RPS

  def computer_move
    rps_array = ["rock", "paper", "scissors"]
    rps_array.sample

  end

  def hotseat
    puts 'Make your move, player 1.'
    hand1 = STDIN.noecho(&:gets).chomp.downcase()
    puts 'Your turn, player 2.'
    hand2 = STDIN.noecho(&:gets).chomp.downcase()
    @hand1 = hand1
    @hand2 = hand2
    puts "Player 1: #{hand1}"
    puts "Player 2: #{hand2}"
    self.resolution

  end

  def play_computer
    puts 'Make your move, player 1.'
    hand1 = STDIN.noecho(&:gets).chomp.downcase()
    hand2 = self.computer_move
    @hand1 = hand1
    @hand2 = hand2
    puts "Player 1: #{hand1}"
    puts "Player 2: #{hand2}"
    self.resolution
  end

  def wins?(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
    if (@hand1 == 'rock') & (@hand2 == 'scissors')
      true
    elsif (@hand1 == 'rock') & (@hand2 == 'paper')
      false
    elsif (@hand1 == 'paper') & (@hand2 == 'rock')
      true
    elsif (@hand1 == 'paper') & (@hand2 == 'scissors')
      false
    elsif (@hand1 == 'scissors') & (@hand2 == 'rock')
      false
    elsif (@hand1 == 'scissors') & (@hand2 == 'paper')
      true
    elsif @hand1 == @hand2
      false
    end
  end

  def resolution
    if @hand1 == @hand2
      puts "This is a draw. :-("
    elsif self.wins?(@hand1, @hand2) == true
      puts "Player 1 wins!"
    else puts "Player 2 wins!"
    end
  end


end
