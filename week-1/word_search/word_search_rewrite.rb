def horizontal(word, puzzle)
  puzzle.each do |row|
    return true if row.join.include?(word) || row.join.reverse.include?(word)
  end
    false
end

def vertical(word, puzzle)
  horizontal(word, puzzle.transpose)
end

def diagonal(word, puzzle, dir)
  rotate = puzzle.map.with_index do |row, idx|
    row << nil
    row.rotate(idx * dir)
  end
  vertical(word, rotate)
end


def search_include?(word, puzzle)
  horizontal(word, puzzle) || vertical(word, puzzle) || diagonal(word, puzzle, 1) || diagonal(word, puzzle, -1)
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

p search_include?(word_horizontal, puzzle)
p search_include?(word_vertical, puzzle)
p search_include?(word_diagonal_left, puzzle)
p search_include?(word_diagonal_right, puzzle)