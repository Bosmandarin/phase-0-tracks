class TodoList

def initialize
  @list = ["do the dishes", "mow the lawn"]
end


def add_item (item)
  @list = ["do the dishes", "mow the lawn"]
    @list.push(item)

end


def delete_item (item)
  @list = ["do the dishes", "mow the lawn"]
  @list.delete(item)
  p @list
end



def get_item (i)
  @list = ["do the dishes", "mow the lawn"]
  p @list[i]
end

end

lists = TodoList.new
p lists.add_item("mop")
p lists.delete_item("do the dishes")
p lists.get_item(0)
