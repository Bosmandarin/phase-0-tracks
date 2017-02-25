##Explore the thing
=begin
puts "Interior Designer Job Application"

form = {
  :name => "John Wick",
  :address => "800 Crenshaw ln, Brighton, UK",
  :email => "jwick@gmail.com",
  :phone => "678 999 8212",
  :fav_shade_of_blue => "Azure",
  :hired => "yes"
}

p form
p form[:name]
p form[:email]= "jwick@yahoo.com"
p form.keys
p form.values
p form[:employed]= true
p form
candidates_name = :name
p form[candidates_name] #It returns the same value the previous key would
p form #However, the :name key is not changed in the hash

form[:name] + form[:email]
p form #It does not affect the hash
=end

##Do the thing
#Pseudocode: Save the user inputs in some variables which will be the values
#in the hash. Create the hash and assign keys to each value using the symbol
#notation. Print our the hash. If the designer would like to update some
#information, present the options again to the designer, have the designer pick
#from the options. Use a loop for every option to make sure the right updated value
#goes to the right key in the hash. Present the new hash
puts "Please fill in the following questionnaire"

puts "Name: "
clients_name = gets.chomp

puts "Age: "
clients_age = gets.chomp.to_i


puts "Number of children: "
clients_children = gets.chomp.to_i


puts "Decor_theme: "
decor_theme = gets.chomp

puts "Would you like to update some information? (yes/no)"
update = gets.chomp

if update = "yes"
  puts "What would you like to change?"
  puts "Name"
  puts "Age"
  puts "Number of children"
  puts "Decor_theme"
  user_update = gets.chomp
end

if user_update = "Name"
  puts "Name: "
  clients_name = gets.chomp
elsif user_update = "Age"
  puts "Age: "
  clients_age = gets.chomp.to_i
elsif user_update = "Number of children"
  puts "Number of children: "
  clients_children = gets.chomp.to_i
else user_update = "Decor_theme"
  puts "Decor_theme: "
  decor_theme = gets.chomp

end


form = {
  :name => clients_name,
  :age => clients_age,
  :kids => clients_children,
  :theme => decor_theme
}
