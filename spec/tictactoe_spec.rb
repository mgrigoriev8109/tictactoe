#spec/tictactoe_spec.rb
require "player"

describe Player do
  let (:player) {Player.new([0,1,2], 'Player test')}
  describe "#check_winner" do
    it "checks winner if top row is xxx" do
      result = player.check_winner
      expect(result).to be true
    end
  end
end