require 'player'

describe Player do

  subject(:dave) {Player.new('Dave')}
  subject(:mittens) {Player.new('Mittens')}

  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end
  
  describe "#name" do
    it "returns its name" do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe "#hit_points" do
    it "returns default hp" do
    expect(dave.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe "#receive_damage" do
    it "reduces the player's hp" do
      expect { mittens.receive_damage }.to change { mittens.hp }.by(-10)
    end
  end
end