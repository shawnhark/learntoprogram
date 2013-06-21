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
# digit array
digits = [[c, 'CM', 'D', 'C', 'CD'],
		[x, 'XC', 'L', 'X', 'XL'],
		[i, 'IX', 'V', 'I', 'IV']]
digits.each do
	if [0] == 9
		roman = roman + [1]
	elsif [0] >= 5
		roman = roman + [2]
		roman = roman + [3] * ([0] - 5)
	elsif [0] == 4
		roman = roman + [4]
	else 
		roman = roman + [3] * [0]
	end
end
roman

puts 'Here is your number in Roman numerals:'
puts roman
