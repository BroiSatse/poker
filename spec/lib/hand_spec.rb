describe Hand do
  describe '#cards' do
    it 'is an array' do
      expect(subject.cards).to be_an Array
    end

    it 'has five elements' do
      expect(subject.cards.size).to eq 5
    end

    it 'contains cards' do
      expect(subject.cards).to all be_a Card
    end
  end

  describe '#value' do
    let(:value) { :value }
    it 'uses valuator to calculate the value' do
      expect(subject).to receive(:valuator).and_return double(get_value: value)
      expect(subject.value).to eq value
    end
  end
end