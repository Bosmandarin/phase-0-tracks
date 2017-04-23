#Author: Tife Odumosu

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Takes the input list as a string separated by spaces
  # Breaks the string into an array of list items
  # Iterates over the array and stores each item under the key value pair with default value of 1
  # returns the hash
# output: Hash

def create_list(list_of_items)
  groc_list = Hash.new
  list_array = list_of_items.split(' ')
  list_array.each do |item|
    groc_list[item] = 1
  end
  p groc_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Check if the list already has that item
  # If list already has that item, include error message
  # add item if the item does not already exist in list
  # Print list
# output: Hash
def add_item(list, list_item, item_quantity)
  if list.has_key?(list_item)
    puts "Item is already in list"
  else
  list[list_item] = item_quantity
  end
  p list
  list
end

# Method to remove an item from the list
# input: list, list_item
# steps:
  # Check if item is in list
  # If item is in list
    # delete item
  # If it is not
    # Return error message
  # Return list
# output: Hash
def remove_item(list, list_item)
  if list.has_key?(list_item)
    list.delete(list_item)
  else
    puts "Item is not in list"
  end
  p list
  list
end

# Method to update the quantity of an item
# input: list, list_item, item_quantity
# steps:
  # Check if item already exists in list
  # If it does, update quantity
  # If it doesnt send error message "Item does not exist"
  # Change value (quantity) according to input and use the key to access that value
# output: Hash
def update_quantity(list, list_item, item_quantity)
  if list.has_key?(list_item)
    list[list_item] = item_quantity
  else
    puts "Item does not exist"
  end
  p list
  list
end

# Method to print a list and make it look pretty
# input: list
# steps: For each item and respective quantity in the hash, print the list
# output: ordered list
def beautify_list(list)
  puts "Grocery List"
  puts " Item: Quantity"
  list.each do |list_item, item_quantity|
    puts " #{list_item} : #{item_quantity}"
  end
end


##Driver Code
puts
puts "1"
# With Interface
puts "Please enter your list"
list_of_items = gets.chomp
my_list = create_list(list_of_items)
# without interface
# create_list("mac cheese butter rice")
# my_list = create_list("mac cheese butter rice")
# my_list = add_list(create_list,"Lemonade", 2)

puts
puts "2"
# With Interface
puts "Please enter an item"
list_item = gets.chomp
puts "Please enter the quantity"
item_quantity = gets.chomp
add_item(my_list, list_item, item_quantity)
# Without Interface
# add_item(my_list,"Tomatoes", 3)
# add_item(my_list,"Onions", 1)
# add_item(my_list,"Ice Cream", 4)

puts
puts "3"
# With Interface
puts "Please delete an item"
list_item = gets.chomp
remove_item(my_list, list_item)
# Without Interface
# remove_item(my_list,"pasta")

puts
puts "4"
# With Interface
puts "Update an items quantity"
puts "Please enter an item"
list_item = gets.chomp
puts "Please enter the quantity"
item_quantity = gets.chomp
update_quantity(my_list, list_item, item_quantity)
# Without Interface
#update_quantity(my_list, "Ice Cream", 1)

puts
puts "5"
beautify_list(my_list)
