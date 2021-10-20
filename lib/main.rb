require_relative "player.rb"
require_relative "gameboard.rb"

current_board = GameBoard.new(Array.new(9, '-'))
current_board.instruction_board
player_one = Player.new([], 'Player one')
player_two = Player.new([], 'Player two')

loop do

  player_one.prompt_player
  current_board.update_board(player_one.player_index_choice, 'o')
  current_board.print_board
  if player_one.check_winner == true || player_two.total_selections == 5
    break
  end

  player_two.prompt_player
  current_board.update_board(player_two.player_index_choice, 'x')
  current_board.print_board
  if player_two.check_winner == true || player_two.total_selections == 5
    break
  end

end