puts 'Hello, what is your first name?'
firstname = gets.chomp
firstlength = firstname.length.to_i
puts 'What is your middle name?'
middlename = gets.chomp
middlelength = middlename.length.to_i
puts 'What is your last name?'
lastname = gets.chomp
lastlength = lastname.length.to_i
fulllength = (firstlength + middlelength + lastlength)
puts 'Did you know there are ' + fulllength.to_s + ' characters'
puts 'in your name, ' + firstname + '?'