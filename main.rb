module UpdateBoard
  def receive_player_input(unavailable_cells)
    #this module method receives player answer from player instance
  end

  def update_board(player_input)
    #this module method updates the board 
  end
end 

class GameBoard
  attr_accessor :gameboard_array

  include UpdateBoard

  def initialize(gameboard_array)
    @gameboard_array = gameboard_array
  end

  def print_board(x)
    @gameboard_array[x] = 'x'
    p gameboard_array[0..2]
    p gameboard_array[3..5]
    p gameboard_array[6..9]
  end
end

class Player
  attr_accessor :player_selections

  include UpdateBoard

  def initialize (player_selections)
    @player_selections = player_selections
  end

  def prompt_player
    #gets the input from the player
  end

  def check_winner
  
  end
  
end

current_board = GameBoard.new(Array.new(9, 'o'))
current_board.print_board(1)
player_one = Player.new(Array.new)
#player_two = Player.new