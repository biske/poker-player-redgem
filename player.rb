require 'json'
require 'pry'


class Player
  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    game_state = JSON.parse(game_state)

    puts game_state.inspect

    my_hole_cards = game_state["players"][game_state["in_action"]]["hole_cards"]

    if (my_hole_cards[0]["rank"] == my_hole_cards[1]["rank"]) or (my_hole_cards[0]["suit"] == my_hole_cards[1]["suit"])
      500
    else
      200
    end
  end

  def showdown(game_state)

  end
end
