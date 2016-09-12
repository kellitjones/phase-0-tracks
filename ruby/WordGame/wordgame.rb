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



end