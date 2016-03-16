class TodoList
  # methods and stuff go here
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  def add_item(new_item) #adds new items
    item = Item.new(new_item)
    @items.push(item)
  end

  def rename(new_title) #changes the title
    @title=new_title
  end

  def delete(line) #deletes an Item
    @items.delete_at(line-1)
  end

  def print(completed=true) #Formatted output
    puts "Todo List: #{title}"
    @items.each_with_index do |val, index|
      if ((val.isCompleted? == true && completed == false) or completed == true) #Just because, Feature 1/3.
        puts "#{index+1}: #{val.print}"
      end
    end
    puts "\n"
  end

  def sort
    @items.sort
  end

  def isCompleted(line,bool) #Checks if item is completed
    @items[line-1].completion = bool
  end
end


class Item
  # methods and stuff go here
  attr_accessor :description, :completion

  def isCompleted? #Returns true if item has been completed
    @completion==true
  end

  def print #Print of item (though it could just have easily been done at the list level)
    "#{@description} (#{isCompleted? == true ? "completed" : "incomplete"})"
  end

  def initialize(item_description)
    @description = item_description
    @completion = false
  end
end
