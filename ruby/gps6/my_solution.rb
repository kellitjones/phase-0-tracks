# Virus Predictor

# I worked on this challenge [by myself, with: Kelli ].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
#require is a built in method and require_relative is a way to grab and link a file
#They are different based on location.
#
# require_relative 'state_data'

class VirusPredictor
#initialize and set the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# runs the two methods combined
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#this method will predict the deaths based on population_density and then population* a num
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
#calculates the spead of spread.
 def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # change_pop = 200
  speed = 0

#this was our failed attempt at refactoring with a while statement. Grr!
# x = 1
# while change_pop > 0
#   if @population_density >= change_pop
#   speed += ( 0.5 * x)
#
#    return "Finished!"
#   end
#   change_pop -= 50
#   x += 1
# end
# end


    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density],STATE_DATA[state][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?

# One uses the hash rocket syntax and the other uses the alternate (symbols for keys) syntax

# What does require_relative do? How is it different from require?

# It asks the computer to retrieve a file from a specific location vs require which asks the computer to retrieve files within load path (which is an array where we store files paths.).

# What are some ways to iterate through a hash?

#You can iterate through a hash using the each iterator. For example:
#hash.each do |key, value|
  #puts key
  #puts value
#end

#You could also use each pair, for example:
#hash.each_pair { |key, value| puts "#{key} maps to #{value}"}
# [1, 2] maps to two
# "three" maps to three
# 1 maps to one

#other options could be using the collect iterator or the times iterator.



# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?

#When we refactored virus_effects we realized that we could get rid of the variables (taken as parameters) because they were repetitive. We could access said variables from the initialize method.
