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

  def deleteFirstItem
    items.shift
  end
 
  def print
    items.each_with_index do |val, index|
      puts "Item #{index}: #{val.description} (#{val.completion == true ? "completed" : "incomplete"})"
    end
  end

end


class Item
  # methods and stuff go here
  attr_accessor :description, :completion

  def initialize(item_description)
    @description = item_description
    @completion = false
  end

  def isCompleted?(item)
    item.completion==true
  end

end
