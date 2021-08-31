

class GameBoard
  attr_accessor :gameboard_array, :game_status
  @game_status = 'running'
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
    unless self.gameboard_array.include?("-")
      self.game_status = 'over'
      print 'The game is over, the board is full and it is a tie!'
    end
  end
end

class Player
  attr_accessor :player_index_choice, :player_selections_array, :player_name, :game_status

  @game_status = 'running'
  @@winning_combinations = [[0,1,2],[0,4,8],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[3,4,5],[6,7,8]]
  
  def initialize (player_selections_array, player_name)
    @player_name = player_name
    @player_selections_array = player_selections_array
    @player_index_choice = player_index_choice
  end

  def prompt_player
    print "#{@player_name}, from 0 to 8, which cell would you like to mark? "
    self.player_index_choice = Integer(gets.chomp)
    self.player_selections_array.push(self.player_index_choice)
  end

  def check_winner
    if (self.player_selections_array.combination(3).to_a & @@winning_combinations).any?
      self.game_status = 'over'
      print "#{self.player_name} is the winner!"
    end
  end
  
end

current_board = GameBoard.new(Array.new(9, '-'))
current_board.instruction_board
player_one = Player.new([], 'Player one')
player_two = Player.new([], 'Player two')

loop do

  player_one.prompt_player
  current_board.update_board(player_one.player_index_choice, 'o')
  current_board.print_board
  player_one.check_winner
  if player_one.game_status == 'over' || current_board.game_status == 'over'
    break
  end

  player_two.prompt_player
  current_board.update_board(player_two.player_index_choice, 'x')
  current_board.print_board
  player_two.check_winner
  if player_two.game_status == 'over' || current_board.game_status == 'over'
    break
  end

end