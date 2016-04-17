def make_board(string)

  board = string.chars.each_slice(9).to_a

  board.map do |row|
    row.map! do |item|
      if item.match(/\d/)
        item.to_i
      else
        item
      end
    end
  end
  board
end

def make_squares_transpose(board)
  squares = []
  i = 0
  while i < board.length
    squares[i]   = board[i][0..2] + board[i+1][0..2] + board[i+2][0..2]
    squares[i+1] = board[i][3..5] + board[i+1][3..5] + board[i+2][3..5]
    squares[i+2] = board[i][6..8] + board[i+1][6..8] + board[i+2][6..8]
    i+=3
  end
  squares
end

def populate_possibilities(board)
  board = make_squares_transpose(board)

  squares_board = []
  board.each do |square|
    n = (1..9).to_a
    current_square = square.select {|item| item.is_a?(Fixnum)}
    still_need = n - current_square
    square = square.map do |elm|
      elm == "-" ? still_need : elm
    end
    squares_board << square
  end

  make_squares_transpose(squares_board)

end

def row_eliminate(board)
  final_board = []
  board.each do |row|
      nums = row.select {|item| item.is_a?(Fixnum)}
      row = row.map do |set|
        if set.is_a?(Array)
          set -= nums
          set = set[0] if set.length == 1
        end
        set
      end
      final_board << row
  end
  final_board
end

def recursive_sudoku(board)
  return board if solved?(board)

  elm = []
  i = 0
  j = 0

  board.each_with_index do |row, i|
    row.each_with_index do |item, j|
      if item.is_a?(Array)
        elm = item
        i = i
        j = j
        break
      end
    end
  end

  p elm
  p i
  p j




  # counter = 0
  # while counter < sub_array.length
  #   board[i][j] = board[i][j][counter]
  #   recursive_sudoku(board)
  #   counter += 1
  # end

end



# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)
  board = make_board(board_string)
  populated_board = populate_possibilities(board)
  20.times do
    updated_board = row_eliminate(populated_board)
    updated_board = row_eliminate(updated_board.transpose)
    updated_board = make_squares_transpose(updated_board.transpose)
    updated_board = row_eliminate(updated_board)
    populated_board = make_squares_transpose(updated_board)
  end
  populated_board
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
  partial = false
  return true if board.all? { |row| row.join.chars.sort.join == "123456789" } &&
                 board.transpose.all? { |col| col.join.chars.sort.join == "123456789" } &&
                 make_squares_transpose(board).all? { |sq| sq.join.chars.sort.join == "123456789" }
  partial
end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
  puts
  board.each_with_index do |row, i|
    puts row[0..2].join(" ") + " | " + row[3..5].join(" ") + " | " + row[6..8].join(" ")
    if i == 2 || i == 5
      puts "------|-------|-------"
    end
  end
  puts
end



# DRIVER CODE

# 1. works
# solve_board = solve("1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--")

# board_one_solve = solved?(solve_board)

# if board_one_solve
#   puts "Board 1 has been solved!"
# end

# pretty_board(solve_board)

# 2. works
# solve_board = solve("--5-3--819-285--6-6----4-5---74-283-34976---5--83--49-15--87--2-9----6---26-495-3")

# board_two_solve = solved?(solve_board)

# if board_two_solve
#   puts "Board 2 has been solved!"
# end

# pretty_board(solve_board)

# 3. works at 10 times
# solve_board = solve("29-5----77-----4----4738-129-2--3-648---5--7-5---672--3-9--4--5----8-7---87--51-9")

# board_three_solve = solved?(solve_board)

# if board_three_solve
#   puts "Board 3 has been solved!"
# end

# pretty_board(solve_board)

# 4. works at 15 times
# p solve("-8--2-----4-5--32--2-3-9-466---9---4---64-5-1134-5-7--36---4--24-723-6-----7--45-")

# 5. works at 10 or 15 times
# p solve("6-873----2-----46-----6482--8---57-19--618--4-31----8-86-2---39-5----1--1--4562--")

# 6. does not work for our initial solution, need to add extra logic to input a possibility if it is the only one left in the row or column
p recursive_sudoku(solve("---6891--8------2915------84-3----5-2----5----9-24-8-1-847--91-5------6--6-41----"))

