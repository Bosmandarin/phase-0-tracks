#Author: Tife Odumosu

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash
puts "1"
def create_list
  groc_list = Hash.new
  p groc_list
end

create_list
puts

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output: Hash
puts "2"
def add_list(list, list_item, item_quantity)
  list[list_item] = item_quantity
  p list
  list
end

my_list = add_list(create_list,"Lemonade", 2)
add_list(my_list,"Tomatoes", 3)
add_list(my_list,"Onions", 1)
add_list(my_list,"Ice Cream", 4)
puts

# Method to remove an item from the list
# input: list, list_item
# steps:
# output: Hash
puts "3"
def remove_list(list, list_item)
  list.delete(list_item)
  p list
  list
end

remove_list(my_list,"pasta")
puts

# Method to update the quantity of an item
# input: list, list_item, item_quantity
# steps: Change value (quantity) according to input and use the key to access that value
# output: Hash
puts "4"
def update_list(list, list_item, item_quantity)
  list[list_item] = item_quantity
  p list
  list
end

update_list(my_list,"Ice Cream", 1)
puts


# Method to print a list and make it look pretty
# input: list
# steps: For each item and respective quantity in the hash, print the list
# output: ordered list
puts "5"
def beautify_list(list)
  puts "Grocery List"
  puts " Item: Quantity"
  list.each do |list_item, item_quantity|
  puts " #{list_item} : #{item_quantity}"

end
end

beautify_list(my_list)
