# Virus Predictor
# Author: Tife Odumosu

# I worked on this challenge [by myself, with: Marco Marin ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Allows the program to access external ruby file and import it into the current file.
# require relative is used to access information from an entire file within the same folder/directory.
# require is similar to require relative but files do not have to be in the same folder.
# 'load' can be used to load info into a file.
# STATE_DATA is considered to be a constant variable. All letters are uppercase.
# It is accessible using driver code as long as require_relative is there. 
# to access it within the class scope, it needs to be passed in on initiation
require_relative 'state_data'

class VirusPredictor

  # Initializes a new VirusPredictor object for a given state.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls private methods predicted_deaths and speed_of_spread for the object
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Makes the following code private to this object
  private

  # Categorizes the scale of death based on population density and computes it,
  # and then makes a print statement to display to user.
  def predicted_deaths()
    # predicted deaths is solely based on population density

    scale = (((@population_density * 100) / 500).floor / 10).floor) / 10
    scale = 0.4 if scale > 0.4
    scale = 0.05 if scale < 0.05
    number_of_deaths = (@population * scale).floor


    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Categorizes the speed of spread based on population density, and then prints that in a sentence fragment.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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

viruspredictors = []

STATE_DATA.each do |state_name, state_info|
  viruspredictors << VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  viruspredictors.last.virus_effects
end

#=======================================================================
# Reflection Section
