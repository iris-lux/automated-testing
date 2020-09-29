
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = Array.new(52){Card.new(rand(1..13), [:hearts, :spades, :clubs, :diamonds].sample)}
  end

  def draw
    return @cards.delete_at(rand(0...@cards.length))
  end

  def shuffle
    @cards.shuffle!
  end

  def count
    return @cards.length
  end
end
