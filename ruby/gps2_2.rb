#Method to create a list
#Input: A string of items
#Steps:
  #Create an empty hash
  #Make elements in the string of items, hash keys
  #Set a default quantity for items
  #Print list to the console 
  
def create_list(items)
  hash = {}
  array = items.split
  array.each {|item| hash[item] = 1}
  return hash
end 

#item_string = "carrots apples cereal pizza"
#updated_list = create_list(item_string)

second_item_string = "lemonade tomatoes ice-cream"
second_updated_list = create_list(second_item_string)

#Method to add items to a list
#Input: item name, quantity, list to modify (updated_list or second_updated_list)
#Steps: add items to a list, and if the item is already on the list update quantoty
#Output: new and improved list with items added

def add_list_items(second_updated_list,item_name,quantity)
	second_updated_list
	if second_updated_list.include?(item_name)
		second_updated_list[item_name]+=quantity
	else
	second_updated_list[item_name] = quantity
    end
end 
p second_updated_list
add_list_items(second_updated_list,'onion',1)
add_list_items(second_updated_list,'lemonade',1)
add_list_items(second_updated_list,'tomatoes',2)
add_list_items(second_updated_list, 'ice-cream', 3)
p second_updated_list

#Method to remove items from list
#Input: list to modify (updated_list or second_updated_list), item_name 
#Steps: 
	#use the delete method to remove an item from the list
#Output: new and improved list with items removed 

def remove_list_items(second_updated_list, item_name)
	second_updated_list.delete(item_name)
end 

p second_updated_list
remove_list_items(second_updated_list, 'lemonade')
p second_updated_list

#Method to update the quantity of an item 
#Input: list to modify, item_name, and quantity
#Steps: update the quantity of an item on the list 
#Output: updated_list

def update_item_quantity(second_updated_list, item_name, quantity)
	second_updated_list[item_name] = quantity
end
p second_updated_list
update_item_quantity(second_updated_list,'ice-cream', 1)
p second_updated_list

#Method to print a list and make it look nice 
#Input: list to modify (updated_list or second_updated_list)
#Steps: print a listing of the hash items on the listing
#Output: the newer, updated list 

def print_list(second_updated_list)
	puts "--------"
	second_updated_list.each{|item, quantity| puts "Currently you have #{quantity} #{item}"}
	puts "--------"
end 
print_list(second_updated_list)
p second_updated_list
