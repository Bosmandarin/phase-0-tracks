puts "Please enter the Hamster's name"
hamster_name = gets.chomp
puts "Hamster name : #{hamster_name}"
puts
puts "From 1 - 10, how loud is your hamster?"
hamster_volume = gets.chomp.to_i
if hamster_volume > 10 || hamster_volume < 1
  puts "Invalid response"
elsif hamster_volume.to_i > 5
  puts "Hamster volume level : #{hamster_volume}"
  puts "Your hamster is way too loud!"
elsif hamster_volume.to_i < 5
  puts "Hamster volume level : #{hamster_volume}"
  puts "Your hamster is way too quiet!"
else
  puts "Your hamster is just right!"
end
puts
puts "What's your hamsters fur color?"
hamster_fur = gets.chomp
puts "Hamster fur color : #{hamster_fur}"
if hamster_fur == "black" || hamster_fur == "white"
  puts "Carry on fella, you're alright in this neighbourhood!"
else
  puts "Turn around if you want to live!"
end
puts
puts "Is your hamster a good candidate for adoption?(yes or no)"
hamster_response = gets.chomp
if hamster_response == 'yes'
  puts "#{hamster_response}: Great! right this way!"
elsif hamster_response == 'no'
  puts "#{hamster_response}:We're sorry, your hamster can't stay here!"
else
  puts "Invalid response, try again"
end
puts
puts "How old is your hamster?"
hamster_age = gets.chomp.to_i
puts "Your hamster is #{hamster_age} years old"
