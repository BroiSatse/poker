describe Deck do
  describe '#cards' do
    let(:cards) { subject.cards }
    it 'is an array'  do
      expect(cards).to be_an Array
    end

    it 'contains 52 elements' do
      expect(cards.size).to eq 52
    end

    it 'contains cards' do
      expect(cards).to all be_a Card
    end
  end

  describe '#get_hand' do
    it 'returns a Hand' do
      expect(subject.get_hand).to be_a Hand
    end

    it 'removes 5 cards from the deck' do
      cards_before = subject.cards
      result = subject.get_hand
      expect( subject.cards ).to eq cards_before - result.cards
    end
  end
end