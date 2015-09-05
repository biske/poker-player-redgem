require 'json'
require 'pry'
require_relative 'card_combinations'


class Player
  VERSION = "Default Ruby folding player"
  GOOD_CARDS = ["A", "K", "Q", "J", "10"]

  def bet_request(game_state)
    puts game_state.class.inspect
    puts game_state.inspect
    
    my_hole_cards = game_state["players"][game_state["in_action"]]["hole_cards"]


    if GOOD_CARDS.include?(my_hole_cards[0]["rank"]) or GOOD_CARDS.include? (my_hole_cards[1]["rank"])
      1000
    else
      500
    end
  end

  def showdown(game_state)
  end
end