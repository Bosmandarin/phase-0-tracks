module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
    words + "!!!" + " :D"
  end

  puts yell_angrily("I want fries")
puts yell_happily("I want fries")
end

# puts Shout.yell_angrily("I want fries")
# puts Shout.yell_happily("I want fries")  
