class TodoList
  # methods and stuff go here
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end
end


class Item
  # methods and stuff go here
  attr_accessor :description, :completion

  def initialize(item_description)
    @description = item_description
    @completion = false
  end
end
