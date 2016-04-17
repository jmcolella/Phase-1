def generate_chessboard
  board = []
  board << ['B Rook', 'B Knight', 'B Bishop', 'B Queen', 'B King', 'B Bishop', 'B Knight', 'B Rook']
  board << ['B Pawn', 'B Pawn', 'B Pawn', 'B Pawn', 'B Pawn', 'B Pawn', 'B Pawn', 'B Pawn']
  board << [nil, nil, nil, nil, nil, nil, nil, nil]
  board << [nil, nil, nil, nil, nil, nil, nil, nil]
  board << [nil, nil, nil, nil, nil, nil, nil, nil]
  board << [nil, nil, nil, nil, nil, nil, nil, nil]
  board << ['W Pawn', 'W Pawn', 'W Pawn', 'W Pawn', 'W Pawn', 'W Pawn', 'W Pawn', 'W Pawn']
  board << ['W Rook', 'W Knight', 'W Bishop', 'W Queen', 'W King', 'W Bishop', 'W Knight', 'W Rook']

  return board

end