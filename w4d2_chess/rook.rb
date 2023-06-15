require_relative 'piece'
class Rook < Piece
    include Slideable

    def initialize(color, board, pos)
        super

    end
    
    def move_dirs
        DIAGONAL_DIRS
    end

    def symbol
        '♜'
    end
end