#Method to create a list
#Input: A string of items
#Steps:
#Create an empty hash
#Make elements in the string of items, hash keys
#Set a default quantity for items 1
#Print list to the console

def create_list (items)
    hash = {}
    array = items.split #string method .split returns array
    array.each {|item| hash[item] = 1} #array method .each method on each item in the array
    return hash
end


#item_string = ("chicken bread rice pizza")
#create_list (item_string)

second_item_string = ("lemonade tomatoes onions ice_cream")
second_update_list = create_list (second_item_string)

#Method to add items to a list
#Input: item name, quantity, list to modify (updated_list or second_updated_list)
#Steps: add items to a list, and if the item is already on the list update quantity
#Output: new and improved list with items added


def add_list_items (second_update_list, item_name, quantity_number)
    
    second_update_list
    second_update_list[item_name] = quantity_number
    
end

p second_update_list
add_list_items(second_update_list, "lemonade", 2)
add_list_items(second_update_list, "tomatoes", 3)
add_list_items(second_update_list,"ice_cream",4)

#Method to remove items from list
#Input: list to modify (updated_list or second_updated_list), item_name
#Steps:
#use the delete method to remove an item from the list
#Output: new and improved list with items removed

def remove_item (second_update_list, item_name)
    second_update_list.delete (item_name)
end



p second_update_list
remove_item(second_update_list, "lemonade")
p second_update_list

#Method to update the quantity of an item
#Input: list to modify, item_name, and quantity
#Steps: update the quantity of an item on the list
#Output: updated_list

def update_item(second_update_list, item_name, quantity_number)
    second_update_list[item_name]= quantity_number
    
end

p second_update_list
update_item(second_update_list, "ice_cream", 1)
p second_update_list

#Method to print a list and make it look nice
#Input: list to modify (updated_list or second_updated_list)
#Steps: print a listing of the hash items on the listing
#Output: the newer, updated_list

def print_list(second_update_list)
    puts "--------"
    second_update_list.each{|item, quantity| puts "Currently you have #{quantity} #{item}"}
    puts "--------"
end
print_list(second_update_list)
p second_update_list

##reflection section##

##What did you learn about pseudocode from working on this challenge?

#- I learned that pseudocode can assist you with determining the structure of the program in which you need to write.
##What are the tradeoffs of using arrays and hashes for this challenge?

#- There are specific built in methods that work for arrays and others that work for hashes, the ability to call a certain method on your array or hash is a trade off.

##What does a method return?

#- a method is going to return the result of the code block that is placed within your method.

##What kind of things can you pass into methods as arguments?

#- Within Ruby there are several arguement types: required arguments,
#arguments with default values,
#and optional arguments.


##How can you pass information between methods?

#-The desired information can be passed as parameters between methods.

##What concepts were solidified in this challenge, and what concepts are still confusing?

#-I think this challenge solidified the concept of using built in methods to perform some functionality and how to pass data between diferent methods without using the class structure.
