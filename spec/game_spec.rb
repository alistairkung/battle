
require "game"

describe Game do
  let(:bill) { double('player') }
  let(:john) { double('player') }
  subject(:game) { described_class.new(john, bill) }

  describe "#last_move" do
    it "should initialize as nil" do
      expect(game.last_move).to be nil
    end
  end

  describe "#attack_player_two" do
    it "calls take hit on player 2" do
      allow(bill).to receive(:take_hit)
      expect(bill).to receive(:take_hit)
      game.attack_player_two
    end

    it "should record the last move as attack by player one" do
      allow(bill).to receive(:take_hit)
      game.attack_player_two
      expect(game.last_move).to eq(:player_one_attack)
    end

   end

end
