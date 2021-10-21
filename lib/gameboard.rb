class GameBoard
    attr_accessor :gameboard_array, :selected_cells
  
    def initialize(gameboard_array)
      @gameboard_array = gameboard_array
      @selected_cells = 0
    end
  
    def instruction_board
      print "Each player will input a number from the 3x3 box below to make their tic-tac-toe selection\n"
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
      @selected_cells += 1
    end

    def is_full?
      if selected_cells == 9
        print "The board is full!\n"
        true
      end
    end

    def reset
      @gameboard_array = Array.new(9, '-')
      @selected_cells = 0
    end
end
  