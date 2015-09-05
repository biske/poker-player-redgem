class CardCombinations
  def initialize(cards)
    @cards = cards
  end

  def one_pair?(cards)
    groupped_cards = @cards.group_by { |card| card.rank }.select { |group| group.size == 2 }
  end
end