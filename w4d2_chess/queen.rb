require_relative 'piece'
class Queen < Piece
include Slideable
    def initialize(color, board, pos)
        super

    end
    
    def move_dirs
        DIAGONAL_DIRS  + HORIZONTAL_DIRS
    end

    def symbol
        '♕'
    end
end