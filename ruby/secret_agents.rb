=begin Pseudocode for the Encryption

Create a while Loop through the string that goes through each letter
And for each letter in the string, do the letter.next
then print the results in a string
=end

#Method for encryption
def encrypt(seq_string)
index = 0
while index < seq_string.length
  seq_string[index] = seq_string[index].next
  index += 1
end
puts seq_string
end
puts encrypt("boluwatife")
puts encrypt("abc")
puts encrypt("zed")


#Encryption without method
index = 0
puts "Please provide a sequence of strings"
seq_string = gets.chomp

while index < seq_string.length
  seq_string[index] = seq_string[index].next
  index += 1
end
puts seq_string

=begin Pseudocode for the Decryption
Create a while Loop through the string that goes through each letter
And for each letter in the string, find a matching letter in the alphabet which
is given in a string. Get the index of that letter in the alphabet and go back
once by using [index - 1]. Get the letter at that index and carry it over to a new string the
next do the letter.next
then print the results in a string
=end

def decrypt(seq_string)
  alphabets = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  seq_string3 = ""
  while index < seq_string.length
    post_desired_letter = alphabets.index(seq_string[index])
    desired_letter = post_desired_letter - 1
    seq_string3 = seq_string3 + alphabets[desired_letter]
    index += 1
  end
  puts seq_string3

end

puts decrypt("bcd")
puts decrypt("afe")
puts decrypt("fag")
puts decrypt(encrypt("swordfish"))

# This method call should work because as long as the product of the nested call
#is of a string form, the decrypt method can still work on it. However the argument
# provided is different in the two methods so they must be the same.

puts "Would you like to decrypt or encrypt a message today?"
user_response = gets.chomp
if user_response = "encrypt"
  puts "Please enter your message for encryption:"
  seq_string = gets.chomp
  puts "Your encrypted message is:"
  puts encrypt(seq_string)
elsif user_response = "decrypt"
  puts puts "Please enter your message here for decryption:"
  seq_string2 = gets.chomp
  puts "Your decrypted message is:"
  puts decrypt(seq_string2)
else
  puts "Invalid response. Try again"
  user_response = gets.chomp
end
