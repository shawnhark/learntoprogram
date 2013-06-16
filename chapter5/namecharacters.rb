puts 'Hello, what is your first name?'
firstname = gets.chomp
puts 'What is your middle name?'
middlename = gets.chomp
puts 'What is your last name?'
lastname = gets.chomp

puts 'Did you know there are ' + ((firstname.length.to_i) + (middlename.length.to_i) + (lastname.length.to_i)) + ' characters'
puts 'in your name, ' + firstname + '?'
