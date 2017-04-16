class TodoList

def initialize(groc_list)
  @groc_list = groc_list
end

def add_item (item)
  groc_list = ["do the dishes", "mow the lawn"]
  @groc_list.push(item)

end

def get_items
  @groc_list
end

def delete_item (item)
  @groc_list = ["do the dishes", "mow the lawn"]
  @groc_list.delete(item)
  @groc_list
end

def get_items
  @groc_list
end

def get_item (i)
  groc_list = ["do the dishes", "mow the lawn"]
  groc_list[i]
end

end

groc_list = ["do the dishes", "mow the lawn"]
list = TodoList.new(groc_list)
p list.add_item("mop")
p list.delete_item("do the dishes")
p list.get_item(0)
