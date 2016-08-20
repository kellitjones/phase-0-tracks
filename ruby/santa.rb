class Santa

  def initialize(gender,ethnicity)
    puts "initializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking << reindeer_ranking.delete(name)
  end

  def gender(gender_selection)
    @gender = gender_selection
  end

  def age
  @age
  end

  def ethnicity
    @ethnicity
  end

end


jolly_santa = Santa.new("male", "asian")
jolly_santa.get_mad_at("Vixen")
jolly_santa.reindeer_ranking

 100.times do |i|
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "genderqueer", "transgeneder", "two-spirit", "N/A"]
ethnicities = ["black", "latino", "white", "asian", "native american", "pacific islander","Mystical Creature (unicorn)", "N/A"]
  santas << Santa.new(genders[i], ethnicities[i])
  p santas
end
