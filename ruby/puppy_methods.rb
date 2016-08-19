class Puppy

  def initialize
    puts "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
  puts human_years * 7
  end

  def chase_cat
  puts "I'm gonna get you!"
  end

end

spot = Puppy.new
spot.fetch("ball")
spot.speak(2)
spot.roll_over
spot.dog_years(3)
spot.chase_cat