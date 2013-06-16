# Deaf Grandma
words = "deaf"
	puts 'Say something to your dear old grandma.'
while words != words.upcase
	words = gets.chomp
	if words != words.upcase
		puts 'HUH?! SPEAK UP, YOUNG WHIPPERSNAPPER.'
	end
end
year = 1929
while year <1930
year = rand(1951)
end
puts 'NO, NOT SINCE ' + year.to_s + '!'
puts ' '
puts 'HAVE A BUTTERSCOTCH CANDY.'
puts ' '