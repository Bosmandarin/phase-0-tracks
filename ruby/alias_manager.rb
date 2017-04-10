#Author: Tife Odumosu
#Unit 5.5: Solo Challenge

class Secret

def initialize(name)
  @name = name
  @swapped_name = ""
  @split_name = []
  @rev_name = ""
  @code_name = ""

end

#test method ##IGNORE
def print
  puts "Your name is Tifé"
end

#Method that swaps the first name with the last name
def name_swap
  puts "Please enter your name: "
  @name = gets.chomp
  @rev_name = @name.reverse
  p @rev_name
end

#This method breaks down the string into an array of characters
def split
  p @rev_name
  @split_name = @rev_name.split('')
  p @split_name
end

#This method takes each vowel and replaces it with the very next vowel
def vowel_switch
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  @split_name.map! do |char|
  if vowels.include?(char)
    char = vowels[vowels.index(char)+1]
  else
    char = char.next
  end
end
p @split_name
end



def code_name_space
if @split_name.include? "!"
  @split_name[@split_name.index("!")] = " "
  end
  p @split_name
end

#This method turns the array of single characters into a string
def name_join
  @code_name = @split_name.join('')
  p @code_name
end

def swap_back
  @swapped_name = @code_name.reverse
  p @swapped_name
end

end
secret = Secret.new("name")
secret.print
secret.name_swap
secret.split
secret.vowel_switch
secret.code_name_space
secret.name_join
secret.swap_back
