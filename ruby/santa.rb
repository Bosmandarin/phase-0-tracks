
class Santa
  attr_reader :gender, :ethnicity

#Method that prints "Initializing Santa instance ...".
  def initialize (gender, ethnicity) #no self and no driver code in class
    # @gender = gender
    # @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  puts "Initializing new santa instance ..."
  puts "The #{ethnicity} Santa is #{gender}"
end

#Method that will print "Ho, ho, ho! Haaaappy holidays!"
def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

#Method that takes a cookie type (example: "snickerdoodle")
#as a parameter and prints "That was a good <type of cookie here>!"
def eat_milk_and_cookies(cookie)
  puts "The #{gender} santa said, that was a good #{cookie}!'"
end

#Getter methods
def gender
  @gender
end

def ethnicity
  @ethnicity
end

def age
  @age
end

#Setter methods
def gender= (new_gender)
  @gender = new_gender
end

def ethnicity= (new_ethnicity)
  @ethnicity = new_ethnicity
end

def celebrate_birthday
  new_age = @age + 1
  @age = new_age
end

def get_mad_at(reindeer_name)
  @reindeer_ranking.delete(reindeer_name)
  @reindeer_ranking.push(reindeer_name)
  @reindeer_ranking
end

end

##Driver code
santa = Santa.new("agender", "black")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.gender = "transgender"
puts
p santa.celebrate_birthday
puts
p santa.get_mad_at("Vixen")
puts
puts "The #{santa.gender} is eating a cookie"

#One way to fill with instances
santas = []
santas << Santa.new("agender", "black")
santa.eat_milk_and_cookies("snickerdoodle")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas

#Another way to fill with instances
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end



#Tried and failed code
=begin
def build_santas(genders)
santas = []
p santas
p genders
genders.length.times do |i|
  santas << Santa.new(genders[i])  }
  #p genders.length.times
  #p i
  #p genders[i]
  #new_gender = genders[i] + "stereotype"
  #new_gender
   #santas << Santa.new(genders[i])
  # p santas
  # p genders[i]
  # p santas

  # puts "There is a Santa who is #{genders[i]}"
  # puts "-----"

end
end

build_santas(genders)

# def build_santas(genders, ethnicities)
# santas = {}
# p santas
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
#   p santas
#   puts "There is a #{ethnicities[i]} Santa who is #{genders[i]}"
#   puts "-----"

# end
# end

# build_santas(genders, ethnicities)
=end
