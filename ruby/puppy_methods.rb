class Puppy

puts "What did you bring, Buster?"

  def self.fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  Puppy.fetch("chew_bone")
puts

puts "What language do you speak?"
  def self.speak(speech)
    puts "I am dog, we speak by barking. Woof #{speech}!"
    speech

  end
  Puppy.speak("human")
puts

puts "What makes you roll over, Buster??"
  def self.roll_over(treat)
    puts "When I get #{treat}, I roll over."
    treat
  end

  Puppy.roll_over("scooby snacks")

puts

puts "How old are you?"
age = gets.chomp
puts "You are #{age} years old?"
  def self.dog_years(age)
    dog_age = age / 7

    puts "That's #{dog_age} years old in dog years"
    age
  end

  Puppy.dog_years(49)

puts


  def self.fur_color(color)
    puts "What color is your fur, Buster??"
    color = gets.chomp
    puts "Your fur is #{color}"
  end

  Puppy.fur_color("brown")

end
