class RockPaperScissors

  def self.play(hand1, hand2)
    valid_options = ["rock", "paper", "scissors"]
    if !valid_options.include?(hand1) || !valid_options.include?(hand2)
      return "Sorry, the valid options are 'rock', 'paper' and 'scissors'."
    end
    if hand1 == hand2
      return "Draw!"
    end
    if (hand1 == 'rock' && hand2 == 'scissors') || (hand1 == 'scissors' && hand2 == 'paper') || (hand1 == 'paper' && hand2 == 'rock')
      return "Player 1 wins!"
    else
      return "Player 2 wins!"
    end
  end

  # def self.player1(hand1)
  #   valid_options = ["rock", "paper", "scissors"]
  #   if !valid_options.include?(hand1)
  #     return "Sorry, the valid options are 'rock', 'paper' and 'scissors'."
  #   end
  #   @@hand1 = hand1
  # end
  #
  # def self.player2(hand2)
  #   valid_options = ["rock", "paper", "scissors"]
  #   if !valid_options.include?(hand2)
  #     return "Sorry, the valid options are 'rock', 'paper' and 'scissors'."
  #   end
  #   if @@hand1 == hand2
  #     return "Draw!"
  #   end
  #   if (@@hand1 == 'rock' && hand2 == 'scissors') || (@@hand1 == 'scissors' && hand2 == 'paper') || (@@hand1 == 'paper' && hand2 == 'rock')
  #     return "Player 1 wins!"
  #   else
  #     return "Player 2 wins!"
  #   end
  # end

end
