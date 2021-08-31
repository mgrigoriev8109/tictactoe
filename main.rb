

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

  def update_board(y)
    @gameboard_array[y] = 'x'
  end
end

class Player
  attr_accessor :player_index_choice, :player_selections_array
  
  def initialize (player_selections_array)
    @player_selections_array = player_selections_array
  end

  def prompt_player
    print "From 0 to 8, which box would you like to mark with an x?"
    @player_index_choice = Integer(gets.chomp)
    p @player_index_choice
  end

  def check_winner
  end
  
end

current_board = GameBoard.new(Array.new(9, 'o'))
player_one = Player.new(Array.new)
player_two = Player.new(Array.new)
player_one.prompt_player
current_board.update_board(player_one.instance_variable_get(:@player_index_choice))
current_board.print_board