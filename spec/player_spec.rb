#spec/tictactoe_spec.rb
require "player"
require "gameboard"

describe Player do
  subject(:player) {described_class.new('Player test')}

  describe "#is_winner?" do
    context 'winner is checked with top row being all x' do
      it "returns true for the game being over" do
        test_player_selected_top_row_ = [0,1,2]
        player.player_selections_array = test_player_selected_top_row
        is_the_game_over = player.is_winner?
        expect(is_the_game_over).to be true
      end
    end
  end

end