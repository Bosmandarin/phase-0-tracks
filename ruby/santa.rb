
class Santa
#Method that will print "Ho, ho, ho! Haaaappy holidays!"

def self.speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

Santa.speak

# #Method that takes a cookie type (example: "snickerdoodle")
# #as a parameter and prints "That was a good <type of cookie here>!"

def self.eat_milk_and_cookies(cookie)
   puts "That was a good #{cookie}!"
 end

Santa.eat_milk_and_cookies("Chocolate fudge cookies")

#Method that prints "Initializing Santa instance ...".

def self.initialize
  puts "Initializing new santa instance ..."
end

Santa.initialize

end 
