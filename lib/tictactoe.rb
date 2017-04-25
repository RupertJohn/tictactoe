require './lib/classes.rb'

def player_info
  puts "Enter player's name:"
  name = gets.chomp
end

player1 = Player.new(player_info)
player2 = Player.new(player_info)
a_board = Board.new
a_game = Game.new(a_board, player1, player2).play
