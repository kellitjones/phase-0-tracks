#release one

empty_array = []
p empty_array

empty_array << "item 1"
empty_array = empty_array + [true, 9]
empty_array << "item 4"
empty_array << "item 5"
p empty_array

empty_array.delete_at(2)

p empty_array

empty_array.insert(2,"inserted item")
p empty_array

empty_array.delete("item 1")

p empty_array

if empty_array.include?("item 4")
    p "The item is in an array"
else
    p "The item is not in the array"
end

another_array = ["dog", "cat", "carrot", 7]

my_var = empty_array + another_array

p my_var

# release 2, methods
# method builds a new array from items provided as parameters
def build_array(item1, item2, item3)
    new_array = [] + [item1,item2,item3]
end

# adds an item to an array
def add_item(array,item)
    array << item
end

p add_item([],"a")
p add_item(["a", "b", "c", 1, 2], 3)
p add_item(["item", 2], true)

p build_array(4,"hello",true)