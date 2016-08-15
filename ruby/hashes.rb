#prompt clients for information
#the following details:
#the client's name, age, number of children, decor theme, and some other details
#convert user details to correct data type (bools, etc.)
#give the user the opportunity to update a key (store and print the hash and ask the user if it's correct)
#print the latest version of the hash

puts "Name:"
name = gets.chomp

puts "Age:"
age = gets.chomp

puts = "Do you have allergies (yes or no)?"
allergies = gets.chomp

if allergies == "yes"
   allergies = true
else
  allergies = false
end

puts "Do you have children (yes or no)?"
children = gets.chomp

if children == "yes"
   children = true
else
  children = false
end

puts "Theme:"
theme = gets.chomp

puts "Favorite Color:"
color = gets.chomp

puts "Number of Rooms:"
rooms = gets.chomp

puts "Phone Number:"
phone = gets.chomp

puts "Home Address:"
address = gets.chomp

puts "Email Address:"
email = gets.chomp

client_details = {
  name: "#{name}",
  age: "#{age}",
  allergies: "#{allergies}",
  children: "#{children}",
  theme: "#{theme}",
  favorite_color: "#{color}",
  rooms: "#{rooms}",
  address: "#{address}",
  phone_number: "#{phone}",
  email: "#{email}",
}
p client_details

puts "Are there any details that you would like to update at this time (yes or no)?"
update_info = gets.chomp

if update_info == "no"
puts "Okay, thanks for providing this details."
else
  puts "What details would you like to update, (ie a detail: your answer)?"
 client_update = gets.chomp.to_sym.downcase
end

if  client_update == :name
    puts "Name:"
    client_details[:name] = gets.chomp
end

if  client_update == :age
    puts "Age:"
    client_details[:age] = gets.chomp
end

if  client_update == :allergies
    puts "Allergies:"
    client_details[:allergies] = gets.chomp
end

if  client_update == :children
    puts "Children:"
    client_details[:children] = gets.chomp
end

if  client_update == :theme
    puts "theme:"
    client_details[:theme] = gets.chomp
end

if  client_update == :favorite_color
    puts "favorite color:"
    client_details[:favorite_color] = gets.chomp
end

if  client_update == :rooms
    puts "rooms:"
    client_details[:rooms] = gets.chomp
end

if  client_update == :address
    puts "address:"
    client_details[:address] = gets.chomp
end

if  client_update == :phone_number
    puts "phone number:"
    client_details[:phone_number] = gets.chomp
end

if  client_update == :email
    puts "email:"
    client_details[:email] = gets.chomp
end
p client_details