class Game

  def initialize(board, player1, player2)
    @board = board
    @players = [player1,player2]
  end

  def play
    while !Game.gameover?(@board) && @board.turn < 9
      x, y = Game.user_input(@players[@board.turn % 2])
      if @board.free_space(x.to_i-1, y.to_i-1)
        @board.update(x.to_i-1,y.to_i-1)
      else
        puts "Spot not free"
        x, y = Game.user_input(@players[@board.turn % 2])
      end
    end
  end

  private

  def Game.user_input(player)
    puts "Where would you like to go #{player.name}?"
    puts "Use the form 'row,column' in range 1-3"
    coords = gets.chomp
    coords.match(/([0-9]),\s*([0-9])/).captures
  end

  def Game.gameover?(board)
    #test rows
    for x in 0...2
      if board.board[x][0] == board.board[x][1] && board.board[x][0] == board.board[x][2] && board.board[x][0] != " "
        return true
      end
    end
    #test columns
    for x in 0...2
      if board.board[0][x] == board.board[1][x] && board.board[0][x] == board.board[2][x] && board.board[0][x] != " "
        return true
      end
    end
    #test diagonals
    if board.board[0][0] == board.board[1][1] && board.board[0][0] == board.board[2][2] && board.board[0][0] != " "
      return true
    end
    if board.board[0][2] == board.board[1][1] && board.board[0][2] == board.board[2][0] && board.board[0][2] != " "
      return true
    end
    #otherwise return false
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
  attr_accessor :board, :turn

  def initialize
    @board = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
    construct(@board)
    @turn = 0
    @icon = ["X","O"]
  end

  def update(x,y)
    @board[x][y] = @icon[@turn % 2]
    @turn += 1
    construct(@board)
  end

  def free_space(x,y)
    if @board[x][y] == " "
      return true
    else
      return false
    end
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
