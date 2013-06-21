#list of words in reverse alphabetical order
puts 'This will create a list of words in reverse alphabetical order.'
puts 'To finish and print, leave line blank.'
puts
unsorted = []
puts 'Please add a word to the list:'
newword = gets.chomp
while newword != ''
	unsorted.push newword
	puts 'Please add another word to the list:'
	newword = gets.chomp
end
puts 'Here is your unsorted list of words:'
puts unsorted
puts
def sort arr
	unsorted.each do |testword|
	testword = 0
		if unsorted[testword] > unsorted[(testword + 1)]
		testword = testword + 1
		else alphabetical.push unsorted[testword]
		end
	end
end
puts 'Here is your sorted list:'
puts(sort(unsorted))
