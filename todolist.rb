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
      if ((val.is_completed? == true && completed == false) or completed == true) #Filtering based on status, Feature 1/3.
        puts "#{index+1}: #{val.print}"
      end
    end
    puts "\n"
  end

  def sort #Sorting of array based on description, Feature 2/3
    @items.sort! {|a,b| a.description.downcase <=> b.description.downcase}
  end

  def all_completed(bool) #Changes the status of all items to completed or incomplete, Feature 3/3
    @items.each do |val|
      val.completion = bool
    end
  end

  def is_completed(line,bool) #Checks if item is completed
    @items[line-1].completion = bool
  end
end


class Item
  # methods and stuff go here
  attr_accessor :description, :completion

  def is_completed? #Returns true if item has been completed
    @completion==true
  end

  def print #Print of item (though it could just have easily been done at the list level)
    "#{@description} (#{is_completed? == true ? "completed" : "incomplete"})"
  end

  def initialize(item_description)
    @description = item_description
    @completion = false
  end
end
