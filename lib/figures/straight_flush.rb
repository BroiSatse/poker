class Figure::StraightFlush

  def matches(hand)
    same_color = hand.cards.map(&:color).uniq.one?
    hand_values = hand.cards.map &:value
    straight = !!(Deck::VALUES * 2).chunk {|card| hand_values.include? card }.find {|value, chunk| value && chunk.size == hand.cards.size }
    same_color && straight
  end
end