class Deck
  VALUES = [*2..9, :T, :J, :Q, :K, :A]
  COLORS = [:c, :d, :h, :s]

  attr_reader :cards

  def initialize
    build_deck
  end

  def get_hand
    hand = Hand.new @cards.sample(5)
    @cards.delete_if {|card| hand.cards.include? card }
    hand
  end

  private

  def build_deck
    @cards = VALUES.product(COLORS).map { |value, color| Card.new(value, color) }
  end
end