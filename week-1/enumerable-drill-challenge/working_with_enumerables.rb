# TODO: Return the odd numbers from a list of integers.
#       Use #select.
def odd_integers(array)
  array.select {|num| num.odd?}
end

# TODO: Return the first number from an Array that is less than a particular number - 'limit.'
#       Use #find.
def first_under(array, limit)
  array.find do |num|
    if num < limit
      return num
    end
  end
end

# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       Use #map.
def add_bang(array)
  array.map {|string| string+"!"}
end

# TODO: Calculate the sum of an Array of numbers.
#       Use #reduce.
def sum(array)
  array.reduce(0) {|sum, num| sum += num}
end

# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       Use #each_slice in combination with other enumerable methods.
def sorted_triples(array)
  sort_array = []
  array.each_slice(3) do |group|
    sort_array << group.sort
  end
  return sort_array
end

# TODO: Returns an array of elements at indices 1, 3, 5, 7, etc.
#       Use #each_with_index.
def odd_indexed_elements(array)
  odd_indx_array = []
  array.each_with_index do |item, idx|
    if idx.odd?
      odd_indx_array << item
    end
  end
  return odd_indx_array
end