require 'game'

describe Game do
  subject(:dave) {Player.new('Dave')}
  subject(:mittens) {Player.new('Mittens')}
  it {is_expected.to respond_to(:attack).with(1).argument}
  subject(:game) {described_class.new(dave, mittens)}

  describe "#attack" do
    it "damages the player" do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end
end