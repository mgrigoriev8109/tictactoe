class GameBoard
  #game_board class generates a new game_board instance with 9 O's
  include BoardRound
end

class Player
  #first and second player generate new_round instances resetting their X selections
  include PlayerRound
end

module BoardRound
  def print_board

  end
end 

module PlayerRound
  def prompt_player

  end
  def check_winner

  end
end

new_board = GameBoard.new
first_player = Player.new
second_player = Player.new