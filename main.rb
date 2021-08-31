

class GameBoard
  attr_accessor :gameboard_array

  def initialize(gameboard_array)
    @gameboard_array = gameboard_array
  end

  def print_board
    p @gameboard_array[0..2]
    p @gameboard_array[3..5]
    p @gameboard_array[6..9]
  end

  def update_board(index, player_selection)
    @gameboard_array[index] = player_selection
  end
end

class Player
  attr_accessor :player_index_choice, :player_selections_array
  
  def initialize (player_selections_array)
    @player_selections_array = player_selections_array
    @player_index_choice = player_index_choice
  end

  def prompt_player
    print "From 0 to 8, which box would you like to mark?"
    @player_index_choice = Integer(gets.chomp)
    p @player_index_choice
  end

  def check_winner
    #if player_selections_array.combination(3).to_a.select{ }
  end
  
end

current_board = GameBoard.new(Array.new(9, '-'))
player_one = Player.new(Array.new)
player_two = Player.new(Array.new)

loop do

  player_one.prompt_player
  current_board.update_board(player_one.player_index_choice, 'o')
  current_board.print_board
  #player_one.check_winner
  unless current_board.gameboard_array.include?("-")
    print 'The game is over, the board is full and it is a tie!'
    break
  end

  player_two.prompt_player
  current_board.update_board(player_two.player_index_choice, 'x')
  current_board.print_board
  #player_two.check_winner
  unless current_board.gameboard_array.include?("-")
    print 'The game is over, the board is full and it is a tie!'
    break
  end

end