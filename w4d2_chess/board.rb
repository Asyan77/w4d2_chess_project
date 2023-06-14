require_relative 'piece'
require_relative 'null_piece'
class Board
    
    def initialize
        @board = Array.new(8) {Array.new(8)}
        
    end
    
    def make_board
        (0...self.length).each do |col|
            @board[0,col] = Piece.new(:black, self,[0,col])
            @board[1,col] = Piece.new(:black, self,[1,col])
            @board[2,col] = NullPiece.new
            @board[3,col] = NullPiece.new
            @board[4,col] = NullPiece.new
            @board[5,col] = NullPiece.new
            @board[6,col] = Piece.new(:white, self, [6,col])
            @board[7,col] = Piece.new(:white, self, [7,col])
        end
    end

    def [](pos)
    row, col = pos
    @board[pos]
  end

  def []=(pos, val)
    row, col = pos
    @board[pos] = val
  end

  

  def move_piece(color, start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise 'there is no piece here'
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = NullPiece

                                                                                                                              
    @board[end_pos]
  end

  def valid_pos?(pos)
    row,
  end

  def add_piece(peice, pos)
  end

  def checkmate?(color)

  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color,start_pos,end_pos)
  end

end
