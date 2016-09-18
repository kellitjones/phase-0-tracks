# Virus Predictor

# I worked on this challenge [by myself, with: Luke  Westerfield].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'  #includes target file to use below

class VirusPredictor

  def initialize(state_of_origin, population_density, population) #initialize instance using state data for below calculations
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  def virus_effects # calls below functions
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths # uses instance initialized above to estimate deaths

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
    number_of_deaths = number_of_deaths.floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread#calculates the speed at which the virus spreads using an instance initialized above
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

stateArray = []
STATE_DATA.each{|state, populationStats|  stateArray.push(VirusPredictor.new(state, populationStats[:population_density], populationStats[:population]))}

stateArray.each{|element| puts element.virus_effects}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

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


