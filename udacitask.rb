require_relative 'todolist.rb'

# Creates a new todo list
job = TodoList.new("job")

# Add four new items
job.add_item("10AM meeting with Bob")
job.add_item("11AM call with Jhonny")
job.add_item("Finish documentation")
job.add_item("4PM leave the office silently")

# Print the list
job.print

# Delete the first item
job.delete(1)

# Print the list
job.print

# Delete the second item
job.delete(2)

# Print the list
job.print

# Update the completion status of the first item to complete
job.is_completed(1,true)

# Print the list
job.print

# Update the title of the list
job.rename("GoodStuff")

# Print the list
job.print
