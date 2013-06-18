# new style roman numeral converter
puts 'This program will convert your standard number into traditional Roman numeral.'
puts 'Please enter your number:'
number = gets.chomp
#digits to letters
m = (number.to_i / 1000)
d = (number.to_i % 1000 / 500)
c = (number.to_i % 1000 / 100)
l = (number.to_i % 100 / 50)
x = (number.to_i % 100 / 10)
v = (number.to_i % 10 / 5)
i = (number.to_i % 10 / 1)
roman = ''
# thousands
roman = roman + 'M' * m
# hundreds
	if c == 9
		roman = roman + 'CM'
	elsif c >= 5
		roman = roman + 'D'
		roman = roman + 'C' * (c - 5)
	elsif c == 4
		roman = roman + 'CD'
	else 
		roman = roman + 'C' * c
	end
# tens
	if x == 9
		roman = roman + 'XC'
	elsif x >= 5
		roman = roman + 'L'
		roman = roman + 'X' * (x - 5)
	elsif x == 4
		roman = roman + 'XL'
	else 
		roman = roman + 'X' * x
	end
# ones
	if i == 9
		roman = roman + 'IX'
	elsif i >= 5
		roman = roman + 'V'
		roman = roman + 'I' * (i - 5)
	elsif i == 4
		roman = roman + 'IV'
	else 
		roman = roman + 'I' * i
	end
roman
puts 'Here is your number in Roman numerals:'
puts roman