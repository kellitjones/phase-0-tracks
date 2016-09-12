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



end
