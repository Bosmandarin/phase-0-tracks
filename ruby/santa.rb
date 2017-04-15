#Author: Tife Odumosu

class Santa
  #Release 3: Refactor
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "A #{@gender} santa who is #{@ethnicity} just signed up"
  end

  def speak
    puts "#{@gender} Santa said, Ho, ho, ho! Haaaappy holidays!"

  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
    puts "Santa is is now #{@age} years old!"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
    p @reindeer_ranking
  end

  #getter methods
  # def age
  #   @age
  #   p @age
  # end

  # def ethnicity
  #   @ethnicity
  #   p @ethnicity
  # end

  #setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  #   puts "Santa is now #{new_gender}"
  # end

end

puts
puts


puts "1"
santa = Santa.new("male", "rainbow-colored")
santa.speak
santa.eat_milk_and_cookies("Cookies and Cream")
santa.gender = "Agender"
santa.age
santa.ethnicity
santa.celebrate_birthday
santa.get_mad_at("Rudolph")

puts
puts


puts "2"
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

#or
puts
puts


puts "3"
santas = []
arry_of_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
arry_of_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
arry_of_genders.length.times do |i|
  santas << Santa.new(arry_of_genders[i], arry_of_ethnicities[i])
end
#or
puts
puts


puts "4"
arry_of_genders.length.times do |i|
  santas << Santa.new(arry_of_genders[i], arry_of_ethnicities[i+1])
end
puts
puts

puts "5"
# Looping through and calling our instance methods on each instantce of Santa
santas.each do |santy|
  santy.speak
end
puts
puts
#Release 4: Make 100 Santas
class Santacon

#   Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.

  def initialize (gender, ethnicity, age)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = age
  end

  def introduce
  puts "There is a #{@gender} Santa at Santacon who is #{@ethnicity} and is #{@age} years old"
  end

end


#Driver Code
puts "1"
#Create 100 instances of Santa
santy = Santacon.new("Male", "Sudanese", 70)
santas = []
arry_of_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
arry_of_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do
  santas << Santacon.new(arry_of_genders.sample, arry_of_ethnicities.sample, rand(140))
end

puts
puts

puts "2"
# Looping through and calling our instance methods on each instance of Santa
santas.each do |santy|
  santy.introduce
end
