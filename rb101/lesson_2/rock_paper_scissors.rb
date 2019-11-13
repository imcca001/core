VALID_CHOICES = %w(rock paper scissors lizard spock)

your_score = 0
computer_score = 0

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock'))
end

def display_winner(your_score, computer_score)
  if your_score == 5
    prompt('Your The Grand Winner!')
  elsif computer_score == 5
    prompt('The computer is the grand winner')
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif win?(computer, player)
    prompt("You Loose!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("you choose: #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    your_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  display_winner(your_score, computer_score)

  prompt("Match score: YOU #{your_score}, COMPUTER #{computer_score} ")
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
