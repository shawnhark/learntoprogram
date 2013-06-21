def sort arr
	rec_sort arr, []
end
def rec_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
		sorted.push smallest
		rec_sort still_unsorted, sorted
	end
end

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
puts 'Here is your sorted list:'
puts(sort([unsorted]))
