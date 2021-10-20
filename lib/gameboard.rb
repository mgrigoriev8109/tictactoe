class GameBoard
    attr_accessor :gameboard_array
  
    def initialize(gameboard_array)
      @gameboard_array = gameboard_array
    end
  
    def instruction_board
      p "Each player will input a number from the 3x3 box below to make their tic-tac-toe selection"
      p [0,1,2]
      p [3,4,5]
      p [6,7,8]
    end 
  
    def print_board
      p @gameboard_array[0..2]
      p @gameboard_array[3..5]
      p @gameboard_array[6..8]
    end
  
    def update_board(index, player_selection)
      self.gameboard_array[index] = player_selection
    end
  end
  