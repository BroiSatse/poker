require_relative '../lib/all'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

module FigureExampleGroup
  def card(code)
    value, color = code.to_s.chars.map(&:to_sym)
    double(value: value, color: color)
  end

  def hand(*cards)
    cards = cards.map {|c| card c}
    double(cards: cards)
  end

  RSpec.configure do |config|
    config.include self, type: :figure
  end
end