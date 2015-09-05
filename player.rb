require 'json'
require 'pry'
require_relative 'card_combinations'


class Player
  VERSION = "Default Ruby folding player"
  GOOD_CARDS = ["A", "K", "Q", "J", "10"]
  MINIMUM_RAISE = 20

  def bet_request(game_state)
    me = game_state["players"][game_state["in_action"]]
    card1 = me["hole_cards"][0]
    card2 = me["hole_cards"][1]

    index = CardCombinations.new(card1, card2).calculate_index
    
    puts "index: #{index.inspect}"

    index * 1000
  end

  def showdown(game_state)
  end
end