

class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        " #{symbol} "
    end

    def empty?
    end

    def valid_moves
    end

    def pos=(val)
    end

    def symbol
        'p'
    end

    private
    def move_into_check?(end_pos)
    end










end

