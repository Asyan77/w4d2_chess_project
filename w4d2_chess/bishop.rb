require_relative 'piece'
class Bishop < Piece
    include Slideable

    def initialize(color, board, pos)
        super

    end
    
    def move_dirs
        DIAGONAL_DIRS
    end

    def symbol
        '♗'
    end
end
