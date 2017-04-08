#practice
def say_nada
  puts "Nada nada naa-da!"
  3.times{yield}
end

say_nada{puts "Say Nada!"}


#Release 1

fav_musicians = ["Tame Impala", "Jamie XX", "MGMT", "Kid Cudi"]
genre_musicians = {
  :psych_rock => "Tame Impala",
  :rap => "Kid Cudi",
  :house => "Tame Impala",
  :hip_hop => "Chris Brown"
}

genre_musicians.each do  |artist, genre|
  puts "#{artist} is a #{genre} musician"
end
puts
fav_musicians.each do |musician|
  puts "#{musician} is probably my best"
end
puts
reversed_artiste = fav_musicians.map do |artiste|
  puts artiste
  artiste.reverse
end

p fav_musicians
p reversed_artiste

#Release 2
puts
numbers = [4,3,7,9,2]
numbers.delete_if {|number| number % 2 == 0 }
puts numbers

puts
numbers = [63,41,10,4,289]
numbers.keep_if {|number| number > 45 }
puts numbers

puts
numbers = [67,35,88,202]
puts numbers.bsearch {|number| number <= 100 }


puts
numbers = [67,35,88,202,72]
puts numbers.take_while {|number| number <= 90 }
