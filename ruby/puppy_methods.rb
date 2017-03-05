
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
    integer.time do
      p "Woof!"
      end
    end
  def roll_over
    p "*rolls over*"
  end
  def dog_years(human_years)
    dog_year= human_years/7
    dog_year
  end
end

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
pug = Puppy.new
pug.fetch("stick")
pug.dog_years(28)
flips=[]
jumps=[]
instance=[]
counter =0
until counter ==50
  gym1=Gymnast.new
  instance.push(gym1)
  counter +=1
end
instance.each do |index|
  flip1 = index.flip
  flips.push(flip1)
  num_jumps= index.jump(rand(10))
  jumps.push(num_jumps)
end
p flips
p jumps
