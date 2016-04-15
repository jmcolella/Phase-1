def straight_line_include?(word, puzzle)
  no_find = false

  # def check(item, word)
  #    return true if item.join.include?(word) || item.join.reverse.include?(word)
  # end

  puzzle.each do |row|
    return true if row.join.include?(word) || row.join.reverse.include?(word)
  end

  puzzle.transpose.each do |column|
    return true if column.join.include?(word) || column.join.reverse.include?(word)
  end

  diag_puzzle = puzzle.push([0,0,0,0,0,0,0])

  rotate_counter = 1
  diag_array_left_to_right = []
  until diag_puzzle.rotate(rotate_counter) == diag_puzzle
    diag_puzzle.rotate(rotate_counter).each_with_index do |array, idx|
      diag_array_left_to_right << array[idx]
    end
    return true if diag_array_left_to_right.join.include?(word) || diag_array_left_to_right.join.reverse.include?(word)
    rotate_counter += 1
  end

  rotate_counter = 1
  diag_array_right_to_left = []
  until diag_puzzle.rotate(rotate_counter) == diag_puzzle
    diag_puzzle.rotate(rotate_counter).each_with_index do |array, idx|
      diag_array_right_to_left << array[-idx]
    end
    return true if diag_array_right_to_left.join.include?(word) || diag_array_right_to_left.join.reverse.include?(word)
    rotate_counter += 1
  end

  return no_find
end


puzzle = [
  ["a", "k", "f", "o", "x", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "x", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]

word_horizontal = "foxes"
word_vertical = "otters"
word_diagonal_left = "oepn"
word_diagonal_right = "bison"

p straight_line_include?(word_horizontal, puzzle)
p straight_line_include?(word_vertical, puzzle)
p straight_line_include?(word_diagonal_left, puzzle)
p straight_line_include?(word_diagonal_right, puzzle)

