class GamePlay
  def initialize

  end

  def turn
  end

  def gameover?
  end
end

class Player
  @@player_icon = ["X", "O"]
  
  def initialize

  end

end

class Board
  def initialize
    @board = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
  end

  def update(string)
  end

  def construct
    puts "_____"
    @board.each do |subarray|
      puts subarray.join("|")
      puts "_____"
    end
  end

end
