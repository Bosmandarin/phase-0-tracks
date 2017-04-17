#Author: Tife Odumosu
class Guessgame

  def initialize
    puts "Initializing Guessing game..."
    @guess = nil
    @secret_word = nil
    @guesses = []
    @max_guesses = 6
    @number_of_guesses = 0
    @secret_word_array = []
  end

def player_one
  puts "Please enter a secret word: "
  puts
  @secret_word = gets.chomp
  @secret_word_array = @secret_word.split(//)
end

def dasher
  found = true
  @secret_word_array.each do |letter|
    if @guesses.include?(letter)
      print letter
    else
      print '_ '
      found = false
    end
  end
  puts
  p found
end

def looper
while @number_of_guesses < 6 || @secret_word_array.length == 0
puts
  puts "Please make a guess: "
    @guess = gets.chomp
    if @secret_word_array.include? (@guess)
        puts "Good guess!"
        @guesses << @guess
        found = dasher
        if found
          puts
          puts "Congratulations, you found my word!"
          break
        end
    else
        puts "Sorry, you suck :("
        @number_of_guesses += 1
        puts "You have #{ 6 - @number_of_guesses } left"
    end
end
end

end

game = Guessgame.new
game.player_one
game.looper
game.dasher
