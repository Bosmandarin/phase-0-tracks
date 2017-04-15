#Author: Tife Odumosu
#Release 1
class Puppy
  def initialize
    p "Initializing new puppy instance ..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
    integer.times do
      p "Woof!"
      end
    end
  def roll_over
    p "*rolls over*"
  end
  def dog_years(human_years)
    dog_year = human_years/7
    #p dog_year
    puts "Your dog is #{dog_year} old!"
  end
end
pug = Puppy.new
pug.fetch("stick")
pug.speak(3)
pug.roll_over
pug.dog_years(28)
puts


#Release 2
class Gymnast
  def initialize
    p "Initializing new puppy instance ..."
  end
  def flip
    p "Do a backflip, then a front flip"
  end
  def jump(num)
    p "jump #{num} times"
  end
end

instance_array = []
counter = 1
50.times do |flex|
  flex = Gymnast.new
  instance_array << flex
end

instance_array.each do |instance|
  instance.flip
  instance.jump(rand(10))
end
