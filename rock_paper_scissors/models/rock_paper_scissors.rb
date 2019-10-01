class RockPaperScissors

  def self.play(hand1, hand2)
    valid_options = ["rock", "paper", "scissors"]
    if !valid_options.include?(hand1) || !valid_options.include?(hand2)
      return "Sorry, the valid options are 'rock', 'paper' and 'scissors'. Please try again."
    end
    if hand1 = hand2
      return "Sorry, the two hands must choose different options. Please try again."
    end
    if (hand1 == 'rock' && hand2 == 'scissors') || (hand1 == 'scissors' && hand2 == 'paper') || (hand1 == 'paper' && hand2 == 'rock')
      return "Hand 1 wins!"
    else
      return "Hand 2 wins!"
    end
  end

end
