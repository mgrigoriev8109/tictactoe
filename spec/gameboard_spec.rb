require_relative "../lib/player"
require_relative "../lib/gameboard"

describe GameBoard do
  describe "#update_board" do
  let(:player) { double("player") }
  subject(:gameboard) {described_class.new(Array.new(9, '-'))}

    context "When the player inputs x to array index 0" do
      it "returns an array with the first index being an x" do
        allow(player).to receive(:player_index_choice).and_return(0)
        gameboard.update_board(player.player_index_choice, 'x')
        expect(gameboard.gameboard_array[0]).to eql('x')
      end
    end
  end
  #describe "#is_full?"

  #end
end