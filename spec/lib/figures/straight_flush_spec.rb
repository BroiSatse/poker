describe Figure::StraightFlush, type: :figure do
  let(:match) { hand :AS, :KS, :QS, :JS, :TS }

  it 'is recognizing the match' do
    expect(subject.matches match).to eq true
  end
end