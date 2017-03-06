class TodoList

def initialize(list)
  @list = ["do the dishes", "mow the lawn"]
end

def get_items
  @list
end

def add_item (item)
  #@list = ["do the dishes", "mow the lawn"]
  @list.push(item)

end

def get_items
  @list
end

def delete_item (item)
  #@list = ["do the dishes", "mow the lawn"]
  @list.delete(item)
end

def get_items
  @list
end

def get_item (i)
  #@list = ["do the dishes", "mow the lawn"]
  @list[i]
end

end

# lists = TodoList.new(["do the dishes", "mow the lawn"])
# p lists.add_item("mop")
# p lists.delete_item("do the dishes")
# p lists.get_item(0)
