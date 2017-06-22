
require "player.rb"

describe Player do

  let(:name) { :John }
  let(:other_name) { :Bill }
  let(:bill) { described_class.new(other_name) }
  subject(:john) { described_class.new(name) }

  describe "#name" do
    it "returns the player's name" do
      expect(john.name).to eq :John
    end
  end

  describe "#health" do
    it "returns the player's current health" do
      expect(john.health).to be 100
    end
  end

  describe "#take_hit" do
    it "decreases the player's health by 10" do
      expect{john.take_hit}.to change{john.health}.by(-10)
    end
  end

  describe "#hit" do
    it "decreases the other player's health by 10" do
      expect{john.hit(bill)}.to change{bill.health}.by(-10)
    end

    it "should record the last move as attacked" do
      john.hit(bill)
      expect(john.last_move).to eq(:attack)
    end
  end

  describe "#last_move" do
    it "should initialize as nil" do
      expect(john.last_move).to be nil
    end
  end


end
