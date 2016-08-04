# Interview with a vampire
# Ask the employee the below questions

#number employees to be processed
puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = employees
while i > 0

#employee details to be collected
puts "What is your name?"
employee_name = gets.chomp
puts "How old are you?"
employee_age = gets.chomp.to_i
puts "What year were you born?"
employee_birthdate = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you (yes or no)?"
employee_lunch_order = gets.chomp
puts "Would you like to enroll in the company’s health insurance (yes or no)?"
employee_insurance = gets.chomp

#makes given details into bools

if (2016 - employee_birthdate) == employee_age
  actual_age = true
elsif (2016 - employee_birthdate) == employee_age + 1
  actual_age = true
else
  actual_age = false
end

if employee_lunch_order == "yes"
  order = true
else
  order = false
end

if employee_insurance == "yes"
  insurance = true
else
  insurance = false
end

allergies = nil
until allergies == "done"
puts "Do you have any allergies? Please type 'done' when complete."
allergies = gets.chomp

#sets the following conditions if allergy is sunshine
if allergies == "sunshine"
  allergies = "done"
  actual_age = false
  insurance = true
  order = false
  end
end


if employee_name == "Drake Cula"
  puts "Definitely a vampire"
elsif employee_name == "Tu Fang"
  puts "Definitely a vampire."
elsif actual_age && (order || insurance)
  puts "Probably not a vampire."
elsif !actual_age && !order && !insurance
  puts "Almost certainly a vampire."
elsif !actual_age && ( !order || !insurance)
  puts "Probably a vampire."
else
  puts "Results are inconclusive."
end
#subtracts one each time through loop
i = i - 1
end
puts "Actually, never mind!!! What do these questions have to do with anything? Let's all be friends."