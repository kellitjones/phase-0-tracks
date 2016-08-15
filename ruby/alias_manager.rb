puts "Hello, agent! What is your name?"
agent_name = gets.chomp
#asks user for their name and stores response in agent_name variable

name_array = agent_name.split
p name_array
#turns the users name response into an array of two strings stores this array as name_array

reversed_name = name_array.reverse
p reversed_name
#reverses the two strings within the array, name_array and stores the reversed value as reversed_name

entire_name = reversed_name.join("")
p entire_name
#joins the reversed_name array's string values into one string, stored as entire_name

agent_alias = entire_name.split("")
p agent_alias
#converts the name into individual characters, stores individual characters as agent_alias


vowels = "aeiouAEIOU"
consonants = "bcdfghjklmnpqrstvxzwyzBCDFGHJKLMNPQRSTVXZWYZ"
#declaring vowel and consonant variables

changed_character = ""
#place holder for replaced characters

agent_alias.map! do |character|
  if character == "u"
    changed_character +="a"

  elsif character == "z"
      changed_character +="b"

  elsif character == ""
      changed_character +=""

  elsif vowels.include?(character)
    changed_character += vowels[vowels.index(character) + 1]
  else
    changed_character += consonants[consonants.index(character) + 1]

  end
end

#compares characters in the users name to vowels and consonant
#changes characters to the next vowel or consonant

fake_name = {}
fake_name[changed_character] = agent_name
fake_name.each do |alias_name, real_name|
  puts "#{real_name} is also known as #{alias_name}."
end