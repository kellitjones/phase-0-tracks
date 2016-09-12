lass Santa
    attr_reader :ethnicity, :reindeer_ranking
    attr_accessor :age, :gender

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

    def gender
        @gender
    end

    def age
        @age
    end

    def ethnicity
        @ethnicity
    end

end


# santa = Santa.new("male", "asian")
# santa.get_mad_at("Vixen")
# p santa.reindeer_ranking
# p santa.age
# p santa.ethnicity
# p santa.gender

santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "genderqueer", "transgeneder", "two-spirit", "N/A"]
ethnicity = ["black", "latino", "white", "asian", "native american", "pacific islander","Mystical Creature (unicorn)", "N/A", "prefer not to say"]

100.times do

    santas << Santa.new(gender.sample, ethnicity.sample)
end
p santas

