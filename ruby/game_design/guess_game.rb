puts "Welcome to the guessing game!"
my_word = "mike"
split_my_word = my_word.split("")
split_my_word
puts "You get one bonus guess"
puts "Make a guess(one letter):"
guess = gets.chomp
counter = 0
right_guess = "____"
p split_right_guess = right_guess.split("")
puts "#{right_guess}"


  split_my_word.each do |char|
    until char == guess
    puts "Try again"
    guess = gets.chomp
    counter += 1
    if counter >= my_word.length
      puts "You lose"
	  break
	end
	if char == guess

	end

	puts "You guessed #{counter} times"
	if counter < my_word.length
      puts "Closer..."
      p split_my_word.index(char)
      split_right_guess.index(split_my_word.index(char)) == char
      guess = gets.chomp
    end
  end

#   until right_guess == my_word

# 	puts "Wrong try again!"
# 	guess = gets.chomp
# 	counter += 1
# 	if counter >= my_word.length
# 	  puts "You lose"
# 	  break
# 	end
# end
# puts "You guessed #{counter} times"
# if counter < my_word.length
#   puts " Congratulations you guessed my word!"
# end
