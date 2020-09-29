
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError.new("Value is not valid") if value < 1 || value > 13
    raise ArgumentError.new("Suit is not valid") unless [:hearts, :spades, :clubs, :diamonds].include?(suit)

    @value = value
    @suit = suit

  end

  def to_s
    return "#{to_face(@value)} of #{@suit.to_s}"
  end

  private

  def to_face(value)
    face_values = {1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King"}
    return face_values[value] ? face_values[value] : value
  end


end
