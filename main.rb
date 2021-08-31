class GameBoard
  attr_accessor :gameboard_array

  #include UpdateBoard

  def initialize(gameboard_array)
    @gameboard_array = gameboard_array
  end

  def print_board
    p gameboard_array[0..2]
    p gameboard_array[3..5]
    p gameboard_array[6..9]
  end
end

class Player
  #first and second player generate new_round instances resetting their X selections
  #include PlayerRound

  def prompt_player
    #gets the input from the player
  end

  def check_winner
  
  end
  
end

module UpdateBoard
  def receive_player_input(unavailable_cells)
    #this module method receives player answer from player instance
  end

  def update_board(player_input)
    #this module method updates the board 
  end
end 

current_board = GameBoard.new(Array.new(9, 'o'))
current_board.print_board
#player_one = Player.new
#player_two = Player.new