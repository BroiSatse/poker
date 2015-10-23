class Valuator
  def initialize(hand)
    @hand = hand
  end

  def is_figure?(figure)
    figure.matches @hand
  end
end

module Figure

end

Dir.glob( File.expand_path '../figures/*.rb', __FILE__).each do |file|
  require file
end