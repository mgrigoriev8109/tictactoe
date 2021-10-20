
class Player
    attr_accessor :total_selections, :player_index_choice, :player_selections_array, :player_name, :game_status
    

    @@winning_combinations = [[0,1,2],[0,4,8],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[3,4,5],[6,7,8]]
    
    def initialize (player_selections_array, player_name)
      @total_selections = 0
      @player_name = player_name
      @player_selections_array = player_selections_array
      @player_index_choice = player_index_choice
    end
  
    def prompt_player
      print "#{@player_name}, from 0 to 8, which cell would you like to mark? "
      self.player_index_choice = Integer(gets.chomp)
      self.player_selections_array.push(self.player_index_choice)
      @total_selections += 1
    end
  
    def check_winner
      if (sort_arrays(self.player_selections_array.combination(3).to_a) & sort_arrays(@@winning_combinations)).any?
        print "#{self.player_name} is the winner!"
        true
      end
    end
    
    def sort_arrays(nested_array)
      if nested_array.all? { |e| e.kind_of? Array }
        nested_array.map! do |array|
          array.sort
        end
      end
    end
  
  end