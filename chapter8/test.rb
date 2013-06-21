# test
flavor = 'vanilla' # Not an array, of course...
secondvar = ['first', 'second']
thing = [89.9, flavor, secondvar]
thing.each do |items|
	puts "Element: " + items.to_s + ' ...'
	puts
end
## treats array within array as an elemnt instead.
## output is: Element: ["first", "second"] ...
puts thing
