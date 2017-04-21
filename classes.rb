class Game

  def initialize(board, player1, player2)
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def play
  end

  def gameover?(board)
    false
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Board

  def initialize
    @board = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
    construct(@board)
    @turn = 0
    @icon = ["X","O"]
  end

  def update(x,y,icon)

  end

  private
  def construct(board_values)
    puts "-----"
    board_values.each do |subarray|
      puts subarray.join("|")
      puts "-----"
    end
  end

end
