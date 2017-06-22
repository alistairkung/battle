
require "game"

describe Game do
  let(:bill) { double:('player') }
  let(:john) { double:('player') }
  subject(:game) { described_class.new(:bill,:john) }

  describe "#attack_p2" do
    it "calls take hit on player 2" do
      game.attack_p2
      allow(:bill).to_receive (:take_hit)
      expect{bill.take_hit}.to change{bill.health}.by -10
    end
  end
end
