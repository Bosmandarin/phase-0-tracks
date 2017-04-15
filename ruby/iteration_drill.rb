# Array Drills
# Author: Tife Odumosu
class Arraydrills

  def initialize
    @zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]
    @extinct_animals = {
      "Tasmanian Tiger" => 1936,
      "Eastern Hare Wallaby" => 1890,
      "Dodo" => 1662,
      "Pyrenean Ibex" => 2000,
      "Passenger Pigeon" => 1914,
      "West African Black Rhinoceros" => 2011,
      "Laysan Crake" => 1923
    }
  end

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

def print_zombies
@zombie_apocalypse_supplies.each do |supplies|
  puts "#{supplies} *"
end
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def sort_zombies
  index = 0
  while index < @zombie_apocalypse_supplies.length
  index2 = index + 1
  while index2 < @zombie_apocalypse_supplies.length
  if @zombie_apocalypse_supplies[index2] < @zombie_apocalypse_supplies[index]
    @zombie_apocalypse_supplies[index], @zombie_apocalypse_supplies[index2] = @zombie_apocalypse_supplies[index2], @zombie_apocalypse_supplies[index]
  end
  index2 += 1
end
index += 1
end
puts
puts @zombie_apocalypse_supplies
puts
end

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def in_zombies(item)
  here = true
    if @zombie_apocalypse_supplies.include?(item)
      puts "#{item} is in the bag"
      here
    else
      puts "#{item} is not in the bag"
      !here
    end
  end


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def cut_down
  until @zombie_apocalypse_supplies.length <= 5
  @zombie_apocalypse_supplies.pop
end
p @zombie_apocalypse_supplies
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

# ----

def combine
  other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
  other_survivor_supplies.each do |others|
    @zombie_apocalypse_supplies.push(others)
  end
  @zombie_apocalypse_supplies = @zombie_apocalypse_supplies.uniq

end

end

drill = Arraydrills.new()
drill.print_zombies
drill.sort_zombies
drill.in_zombies("rations")
drill.cut_down
drill.combine


# Hash Drills
# Author: Tife Odumosu
class Hashdrills

  def initialize
    @extinct_animals = {
      "Tasmanian Tiger" => 1936,
      "Eastern Hare Wallaby" => 1890,
      "Dodo" => 1662,
      "Pyrenean Ibex" => 2000,
      "Passenger Pigeon" => 1914,
      "West African Black Rhinoceros" => 2011,
      "Laysan Crake" => 1923
    }
    @animal_array = @extinct_animals.keys
  end

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def print
  @extinct_animals.each do |animals, year|
    puts "#{animals} - #{year}"
  end

end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def two_thousand
  @extinct_animals.map do |animal, year|
  if @extinct_animals[animal] > 2000
    @extinct_animals.delete(animal)
  end
end
p @extinct_animals
end


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def three_years_back
  @extinct_animals.map do |animal, year|
    @extinct_animals[animal] = @extinct_animals[animal] - 3
  end
  puts
  puts @extinct_animals
  puts
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def they_here
  included = true
  new_animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
  new_animals.each do |animal|
    @animal_array.each do |animal2|
      if animal == animal2
        included
        puts "#{animal} is extinct"
      else
        !included
      end
    end
  end
end


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

def remove_some(species)
  p @extinct_animals.key(species)
  small_array = []
  small_array << @extinct_animals[species]
  small_array << @extinct_animals.key(@extinct_animals[species])
  @extinct_animals.delete(species)
  p small_array
  p @extinct_animals
end


end

hash_drills = Hashdrills.new()
hash_drills.print
hash_drills.three_years_back
hash_drills.two_thousand
hash_drills.they_here
hash_drills.remove_some("Passenger Pigeon")
end
