class GameBoard
  #game_board class generates a new game_board instance with 9 O's
  include UpdateBoard
  def initialize(unavailable_cells_x, available_cells_o)
    @available_cells_o = [0..8]
    @unavailable_cells_x = []
  end

  #include attr_accessor

  def print_board
    #printing the board is functionality that only the GameBoard class requires
  end
end

class Player
  #first and second player generate new_round instances resetting their X selections
  include PlayerRound

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

current_board = GameBoard.new
player_one = Player.new
player_two = Player.new