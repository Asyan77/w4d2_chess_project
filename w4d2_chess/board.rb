require_relative 'piece'
require_relative 'null_piece'
class Board
    attr_reader :grid, :null_piece
    def initialize
        @null_piece = NullPiece.instance
        @grid = Array.new(8) {Array.new(8,null_piece)}
        make_board
    end
    
    def make_board
      [0,1].each do |i|
       @grid[i] = @grid[i].map.with_index {|_, j| Piece.new([i, j], :W, self)}
      end
      
      [6,7].each do |i|
        @grid[i] = @grid[i].map.with_index {|_, j| Piece.new([i, j], :B, self)}
       end

        # (0...@grid.length).each do |i|
        #     @grid[0,0] = Piece.new(:black, self, [0,col])
        #     @grid[1,1] = Piece.new(:black, self, [1,col])
        #     @grid[2,col] = NullPiece.new
        #     @grid[3,col] = NullPiece.new
        #     @grid[4,col] = NullPiece.new
        #     @grid[5,col] = NullPiece.new 
        #     @grid[6,col] = Piece.new(:white, self, [6,col])
        #     @grid[7,col] = Piece.new(:white, self, [7,col])
        # end
    end


    def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  

  def move_piece(start_pos, end_pos)
    if self[start_pos] = null_piece || !valid_pos?(end_pos)
      raise 'there is no piece here'
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = null_piece
  end
end

  def valid_pos?(pos)
    row, col = pos
    if row < 0 || col < 0 
      return false
    elsif row > 7 || col > 7
      return false
    end
    true
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

  def to_s
    @grid.each {|row| puts row.join}
   # @grid.inject("") {|acc, row| acc + "#{row.join(' ')}\n"}
  end
end
