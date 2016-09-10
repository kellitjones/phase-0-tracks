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
spot.fetch("frisbee")
spot.speak(5)
spot.roll_over
spot.dog_years(2)
spot.chase_cat

#Release two, designing a class.


class Lion
    
    def initialize
        puts 'Roarrrrrr....'
    end
    
    def eat
        puts 'Chomp, chomp, chomp!'
    end
    
    def rest
        puts 'ZZZzzzzz...'
    end
end

Lion_array = []

50.times do |x|
    Lion_array.push(Lion.new)
end

Lion_array.each do |lion_instance|
    lion_instance.eat
    lion_instance.rest
end