items = ['first', 'second', 'third']
puts items.shuffle

random = items.length
shuffle = rand(random)
puts items[shuffle]
items.pop[shuffle]

#use checksum-1 to determine passes
#end once checksum=0
#make sure to elimiate [shuffle] from items instead of just last item through pop
