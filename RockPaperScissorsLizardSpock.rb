=begin
In this kata, your task is to implement an extended version of the famous rock-paper-scissors game. The rules are as follows:

Scissors cuts Paper
Paper covers Rock
Rock crushes Lizard
Lizard poisons Spock
Spock smashes Scissors
Scissors decapitates Lizard
Lizard eats Paper
Paper disproves Spock
Spock vaporizes Rock
Rock crushes Scissors
Task:
Given two values from the above game, return the Player result as "Player 1 Won!", "Player 2 Won!", or "Draw!".

Inputs
Values will be given as one of "rock", "paper", "scissors", "lizard", "spock".
=end




#My attempt
def rpsls(p1, p2)
  if p1 == p2
    return "Draw!"
  end
  if p1 == 'spock'
    if p2 == 'scissors' || p2 == 'rock'
      return "Player 1 Won!"
    else
      return "Player 2 Won!"
    end
  elsif p1 == 'rock'
    if p2 == 'lizard' || p2 == 'scissors'
      return "Player 1 Won!"
    else
      return "Player 2 Won!"
    end
  elsif p1 == 'lizard'
    if p2 == 'spock' || p2 == 'paper'
      return "Player 1 Won!"
    else
      return "Player 2 Won!"
    end
  elsif p1 == 'scissors'
    if p2 == 'paper' || p2 == 'lizard'
      return "Player 1 Won!"
    else
      return "Player 2 Won!"
    end
  elsif p1 == 'paper'
    if p2 == 'spock' || p2 == 'rock'
      return "Player 1 Won!"
    else
      return "Player 2 Won!"
    end
  end
end

#There are some "interesting" alternative solutions to this one, but none that I know the syntax for, so this is the best I could have done.
