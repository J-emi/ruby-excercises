def bubble_sort(array)
  array_length = array.length
  return array if array_length <= 1

  loop do
    # we need to create a variable that will be checked so that we don't run into an infinite loop scenario.
    sorted = false

    # subtract one because Ruby arrays are zero-index based
    (array_length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
    end

    break if not sorted
  end

  return array
end

#test
unsorted_array = [4,3,78,2,0,2]
print bubble_sort(unsorted_array)
