#enter words to sort
def sort arr
  recsort arr, []
end

def recsort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  stillunsorted = []

  unsorted.each do |testedobject|
    if testedobject < smallest
      stillunsorted.push smallest
      smallest = testedobject
    else
      stillunsorted.push testedobject
    end

  end
  sorted.push smallest
  recsort stillunsorted, sorted
end

puts 'This will create a list of words in reverse alphabetical order.'
puts 'To finish and print, leave line blank.'
puts
original_list = []
puts 'Please add a word to the list:'
newword = gets.chomp
while newword != ''
  original_list.push newword
  puts 'Please add another word to the list:'
  newword = gets.chomp
end
puts 'Here is your unsorted list of words:'
puts original_list
puts
puts 'Here is your sorted list:'
puts(sort([original_list]))
