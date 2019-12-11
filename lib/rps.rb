class RPS

  def wins?(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
    if (@hand1 == 'rock') & (@hand2 == 'scissors')
      true
    elsif (@hand1 == 'rock') & (@hand2 == 'paper')
      false
    end
  end

end
