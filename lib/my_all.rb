require 'pry'

def my_all?(collection)
	i = 0
	block_return_values = [] # collect return values to evaluate later
	while i < collection.length
		block_return_values << yield(collection[i]) # when code hits this line it yields THIS to the block passed in (i.e. block as argument)
		i+=1
	end

  if block_return_values.include?(false) # this means that if the collection does not contain all true then all? is false
    false
  else
    true
  end

end
