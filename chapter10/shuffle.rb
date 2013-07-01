#shuffle program
def shuffle arr
  shuff = []
  while arr.length > 0
    random_index = rand(arr.length)
    current_index = 0
    new_arr = []

    arr.each do |item|
      if current_index == random_index
        shuff.push item
      else
        new_arr.push item
      end
      current_index = current_index + 1
    end
    arr = new_arr
  end
  shuff
end
puts(shuffle(['boat','zebra','dog','boat','apple','fish']))