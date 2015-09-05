class CardCombinations
  GOOD_CARDS = ["A", "K", "Q", "J", "10"]

  def initialize(card1, card2)
    @card1 = card1
    @card2 = card2
    @goodness_index = 0
  end

  def one_pair?
    @card1["rank"] == @card2["rank"]
  end

  def two_goods?
    GOOD_CARDS.include?(@card1["rank"]) && GOOD_CARDS.include?(@card2["rank"])
  end

  def good?(card)
    GOOD_CARDS.include?(card["rank"])
  end

  def calculate_index
    if one_pair?
      return @goodness_index = 0.8
    end

    if two_goods?
      return @goodness_index = 0.7
    end
    
    if good?(@card1)
      return @goodness_index = 0.2
    end

    if good?(@card2)
      return @goodness_index = 0.2
    end

    return @goodness_index = 0.1
  end
end