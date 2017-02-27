class Secret

swapped_name = ""
split_name = []
rev_real_name = ""

#test method ##IGNORE
def self.print
  puts "Your name is Tifé"
end

Secret.print

#real_name = gets.chomp
#Method that swaps the first name with the last name
def self.name_swap(real_name)
  rev_real_name = real_name.reverse
end

Secret.name_swap("Felicia Torres")
swapped_name = name_swap("Felicia Torres")
p swapped_name
#p rev_real_name

#This method breaks down the string into an array of characters
def self.split(swapped_name)
  split_name = swapped_name.split('')
  p split_name
end
# Notes: Variables declared outside the methods remain unchanged even if those variables are called within the method and re-assigned value
Secret.split(swapped_name)
splitted_name = split(swapped_name)
p splitted_name

#This method takes each vowel and replaces it with the very next vowel
def self.vowel_switch(splitted_name)
  vowels = ["a", "e", "i", "o", "u"]
  splitted_name.map do |char|
  if vowels.include?(char)
    next_vowel = vowels[vowels.index(char)+1]
    p vowels.index(char)+1
    p next_vowel
    char = vowels[vowels.index(char)+1]
  else
    char = char
  end
end
end

Secret.vowel_switch(splitted_name)
vowels_switched = vowel_switch(splitted_name)
p vowels_switched

#This method takes each consonant and replaces it with the very next consonant
def self.consonant_switch(vowels_switched)
  vowels = ["a", "e", "i", "o", "u"]
  vowels_switched.map do |char|

  if vowels.include?(char)
    char = char
  else
    char = char.next
  end
end
end

Secret.consonant_switch(vowels_switched)
consonant_switched = consonant_switch(vowels_switched)
p consonant_switched


#This method turns the array of single characters into a string
def self.name_join(consonant_switched)
  consonant_switched.join('')
end

Secret.name_join(consonant_switched)
name_joined = name_join(consonant_switched)
p name_joined
#p rev_real_name

#This method removes symbols within the name and creates a space #between first and last name

def self.code_name_space(name_joined)
 if name_joined.include? "!"
   name_joined.gsub('!', ' ')
  end
end

Secret.code_name_space(name_joined)
code_name_spaced = code_name_space(name_joined)
p code_name_spaced
#p rev_real_name

#This method swaps the the position of the first and last name
#so that the name does not read backwards
def self.agent_name_swap(code_name_spaced)
  agent_name_swapped = code_name_spaced.reverse
end

Secret.agent_name_swap(code_name_spaced)
agent_name_swapped = agent_name_swap(code_name_spaced)
p agent_name_swapped
