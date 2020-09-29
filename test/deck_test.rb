require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  let(:deck){
    Deck.new
  }
  describe "You can create a Deck instance" do
    it "Can be created" do
      expect(deck).must_be_instance_of Deck
    end

    it "Has an attribute containing an array of cards" do
      deck.cards.each{|card| expect(card).must_be_instance_of Card}
    end

    it "Creates a deck of 52 cards" do
      expect(deck.cards.length).must_equal 52
    end
  end

  describe "shuffle method" do
    it "Shuffle method can be called" do
      deck.shuffle
    end
  end

  describe "draw method" do
    it "draw returns a card" do
      expect(deck.draw).must_be_instance_of Card
    end

    it "draw method removes a card" do
      deck.draw
      expect(deck.count).must_equal 51
    end
  end

  describe "count method" do
    it "correctly counts number of cards" do
      expect(deck.count).must_equal 52
    end
  end
end
