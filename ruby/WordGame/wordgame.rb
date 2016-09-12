class WordGame
  attr_reader :exact_guesses, :guess_word

  def initialize(guess_word)
    @guess_word = guess_word
    @exact_guesses = Array.new(guess_word.length, "_")
  end

  def examine(letter)
    index =  @guess_word.index(letter)

    if  @guess_word.include?(letter)
         @exact_guesses.delete_at(index)
         @exact_guesses.insert(index, letter)
        @exact_guesses.join(' ')
    else
      puts "#{letter} is not in the guess word."
       @exact_guesses.join(' ')
    end
  end

def count_user_tries
    count = 0
    num_of_tries =  guess_word.length

    until count == num_of_tries
      puts "TRY number #{count + 1} :"

      puts "Player 2, please guess a letter"
      letter = gets.chomp

      puts check(letter)
      puts "Do you think you know the guess word? (y/n)"
      has_a_guess = gets.chomp

      if  has_a_guess == "y"
        puts "What is your answer?"
       answer = gets.chomp

        if answer == guess_word
          puts "You did it! That is the correct answer."
          break
        else
          puts "Sorry, that is not the guess word. Womp... Womp!"
          break
        end
      end
      count += 1
    end
  end

puts "Welcome to the WordGuess game!!!"

puts "Hi there, Player 1!"
puts "What word would you like player 2 to guess:"
guess_word = gets.chomp


puts
num_of_tries = guess_word.length

new_game = WordGame.new(guess_word)


puts "Hi there, Player 2!."
puts "The guess word is #{new_game.guess_word.length} letters long."
puts new_game.exact_guesses.join(' ')
puts "You have #{num_of_tries} tries to guess it right!"


count = 0

until count == num_of_tries
  puts "TRY number #{count + 1} :"
  puts "Player 2, guess a letter"
  letter = gets.chomp

  puts new_game.examine(letter)
  puts "Do you think you know the guess word? (y/n)"
  has_a_guess = gets.chomp

  if  has_a_guess == "y"
    puts "What is your answer?"
    answer = gets.chomp

    if answer == guess_word
      puts "Thats right. You did it!"
      break
    else
      puts "Sorry, that is not the guess word. Womp... Womp!"
      break
    end
  end
  count += 1
end

puts "No more tries left!"
puts
puts "Already figured out the word? Type exit to exit the game."
 puts "If you want one last attempt,please take a guess now, or type exit!"
 guess = gets.chomp

  if guess == guess_word
  puts "Awesome! You finally figured it out."
  elsif guess == 'exit'
  puts 'Thanks for stopping by and playing!'
  else guess != guess_word
  puts "Bummer, that is not the correct guess. Better luck next time."

  end
end