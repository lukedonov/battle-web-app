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

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq dave
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq mittens
    end
  end
end

