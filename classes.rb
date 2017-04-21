class Game

  def initialize(board, player1, player2)
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def play
  end

  def gameover?(:board)
    false
  end
end

class Player
  attr_accessor :name, :icon

  @@player_icon = ["O", "X"]

  def initialize(name)
    @name = name
    @icon = @@player_icon.pop()
  end

end

class Board
  def initialize
    @board = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
    construct(@board)
  end

  def update(x,y,player_icon)

  end

  private
  def construct(board_values)
    puts "_____"
    board_values.each do |subarray|
      puts subarray.join("|")
      puts "_____"
    end
  end

end
