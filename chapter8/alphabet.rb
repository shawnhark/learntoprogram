#alphabetize a list
puts 'This will alphabetize a list of words.'
puts 'To finish and print, leave line blank.'
puts
words = []
puts 'Please add a word to the list:'
newword = gets.chomp
while newword != ''
	words.push newword
	puts 'Please add another word to the list:'
	newword = gets.chomp
end
puts 'Here is your alphabetized list of words:'
puts words.sort