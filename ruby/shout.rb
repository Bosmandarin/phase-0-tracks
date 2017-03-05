#Release 1: For practice

# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end
#
#   puts yell_angrily("I want fries")
# puts yell_happily("I want fries")
# end

# puts Shout.yell_angrily("I want fries")
# puts Shout.yell_happily("I want fries")



#Release 3
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def yell_reluctantly(words)
    words + "!!!" + " :|"
  end
  def yell_enthusiastically(words)
    words + "!!!" + " {:D"
  end
end

  class Mom
    include Shout
  end

  class Dad
    include Shout
  end

dad = Dad.new
p dad.yell_reluctantly("Take out the trash")

mom = Mom.new
p mom.yell_enthusiastically("Take out the trash")
