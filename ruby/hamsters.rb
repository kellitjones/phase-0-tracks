puts "What is the hamster's name?"
hamster_name = gets.chomp.capitalize

puts "What is the volume level of the hamster, level one through ten?"
hamster_volume = gets.chomp.to_i

puts "What color is the hamster's fur?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adoption_candidate = gets.chomp.capitalize
if adoption_candidate == "Yes"
  adoptability = "a good"
else
  adoptability = "not a good"
end


puts "What is the hamster's estimated age?"
hamster_age = gets.chomp.to_i
if hamster_age == ""
  hamster_age = nil
end


puts "Candidate Info"
puts "This hamster's name is #{hamster_name}."
puts "This hamster's volume level is #{hamster_volume}."
puts "This hamster's fur color is #{fur_color}."
puts "#{adoption_candidate}, this hamster is #{adoptability} candidate for adoption."
puts "This hamster's age is #{hamster_age}."