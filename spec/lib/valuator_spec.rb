describe Valuator do
  let(:fake_hand) { double }
  subject { described_class.new fake_hand }

  describe '#get_value' do

  end

  describe '#is_figure?' do
    let(:result) { true }
    let(:figure) { double(matches: result) }

    it 'returns true if given hand matches condition of a given figure' do
      expect(subject.is_figure? figure).to eq true
    end
  end
end
