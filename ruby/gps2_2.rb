# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list
  groc_list = {}
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:



=begin
def create_list
  groc_list = {}
end

create_list
=end
#Create an empty list(hash)
def create_list
  groc_list = Hash.new
end

create_list
puts

#Adds an item to the list
#=begin
def add_list(list, list_item, item_quantity)
  #groc_list = Hash.new
  list[list_item] = item_quantity

  p list
  list
end

my_list = add_list(create_list,"cheese", 5)

add_list(create_list,"cheese", 5)

add_list(my_list,"butter", 2)

add_list(my_list,"pasta", 10)
puts

#Remove an item from the list
def remove_list(list, list_item)
  list.delete(list_item)
  p list
  list
end

remove_list(my_list,"pasta")
puts

#Update the value of an item
def update_list(list, list_item, item_quantity )
  list[list_item] = item_quantity
  p list
  list
end

update_list(my_list,"pasta", 12)
puts

#Make the code pretty
def beautify_list(list)
  puts "Grocery List"
  puts " Item: Quantity"
  list.each do |list_item, item_quantity|
  puts " #{list_item} : #{item_quantity}"

end
end

beautify_list(my_list)
