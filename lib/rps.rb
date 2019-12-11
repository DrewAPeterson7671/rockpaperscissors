class RPS

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
      true
    end
  end

end
