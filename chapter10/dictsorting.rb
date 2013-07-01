#Dictionary sorting program
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
    if testedobject.downcase < smallest.downcase
      stillunsorted.push smallest
      smallest = testedobject
    else
      stillunsorted.push testedobject
    end

  end
  sorted.push smallest
  recsort stillunsorted, sorted
end

puts(sort(['boat','Zebra','Dog','Boat','apple','fish']))