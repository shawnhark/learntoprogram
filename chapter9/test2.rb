def sort arr
	recsort arr, []
end
def recsort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	smallest = unsorted.pop
	stillunsorted = []

	unsorted.each do |testword|
		if testword > smallest
			stillunsorted.push smallest
			smallest = testword
		else stillunsorted.push testword
		end
	end
	sorted.push smallest
	recsort stillunsorted, sorted
end
puts(sort(['big', 'pig', 'fig']))