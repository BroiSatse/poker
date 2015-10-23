class Hand

  attr_reader :cards, :valuator

  def initialize(cards = nil)
    @cards = cards || generate_hand
  end

  def value
    valuator.get_value
  end

  private

  def generate_hand
    Deck.new.cards.sample(5)
  end
end