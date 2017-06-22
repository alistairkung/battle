
require "game"

describe Game do
  let(:bill) { double('player') }
  let(:john) { double('player') }
  subject(:game) { described_class.new(john, bill) }

  describe "#attack_player_two" do
    it "calls take hit on player 2" do
      allow(bill).to receive(:take_hit)
      allow(john).to receive(:last_move).with('attack')
      expect(bill).to receive(:take_hit)
      game.attack_player_two
    end
   end

end
