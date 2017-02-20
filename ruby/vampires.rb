puts "How many employees will we be screening today?"
number_of_employees = gets.chomp.to_i

while number_of_employees > 0

puts "What is your name?"
vampire_name = gets.chomp
puts "Name of Employee: #{vampire_name}"
puts

puts "What year were you born?"
vampire_dob = gets.chomp.to_i
current_year = 2017
actual_age = current_year - vampire_dob
puts "How old are you?"
vampire_age = gets.chomp.to_i
if actual_age == vampire_age
  puts "Age of Employee: #{vampire_age}"
  age_of_vampire = true
else
  puts "False, werewolf security, take this vampire down!"
end
puts

puts "We are having garlic bread for lunch, would you like to come along?(yes/no)"
vampire_response = gets.chomp
if vampire_response == "yes"
  puts "Terrific! See you soon *cough* vampire"
  vampire_eats_garlic = true
else
  puts "Sure *cough* vampire. I mean #{vampire_name}"
end
puts

puts "Would you be interested in company health insurance?"
vampire_health = gets.chomp
if vampire_health == "yes"
  puts "Signed Up! You're in good hands."
  vampire_has_insurance = true
elsif vampire_health == "no"
  puts "Why not? Got eternal life? *wink-wink*"
else
  puts "Sorry, I didnt quite get that, is that Vampiran?"
end
puts
puts "Your status is:"
if age_of_vampire && vampire_eats_garlic && vampire_has_insurance
  puts "Probably not a vampire"
elsif !age_of_vampire || !vampire_eats_garlic || !vampire_has_insurance
  puts "Almost certainly a vampire"
elsif !age_of_vampire && !vampire_eats_garlic && !vampire_has_insurance
  puts "Probably a vampire"
elsif vampire_name = Drake || vampire_name = Count
  puts "Definitely a vampire"
else
  puts "Results Inconclusive"
end

puts

#puts "Please list any allergies (Type done when you are finished):"
#allergies = ""
#until allergies = "sunshine" || allergies = done
  #allergies = gets.chomp
  #if allergies = "sunshine"
    #puts "!!VAMPIRE ALERT!!"
  #end

#end

puts "Please list any allergies (Type done when you are finished):"
loop do
  allergies = gets.chomp
  if allergies = "sunshine"
    puts "!!VAMPIRE ALERT!!"
  end
  break if allergies = "sunshine" || allergies = "done"
end

number_of_employees = number_of_employees - 1
end
puts
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
