require "deck"
require "hand"
require "player"
require "game"

describe Card do
  let(:card) { Card.new(suit, value) }
  let(:face_card) { Card.new(:hearts, 12) }

  describe "#initialize" do
    it "converts numerical to face card" do
      expect(face_card.value).to eq(:queen)
    end

    it "correctly assigns suit" do
      expect(face_card.suit).to eq(:hearts)
    end
  end

end

describe Deck do
  let(:deck) { Deck.new }

  describe "initial state" do
    it "begin with 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "contains no repeats" do
      expect(deck.cards).to eq(deck.cards.uniq)
    end
  end

  describe "#[]=" do
    it "finds card at specific index" do
      expect(deck[8]).to eq(deck.cards[8])
    end
  end

  describe "#shuffle" do
    it "shuffles cards" do
      pre_shuffle_deck = deck.cards
      expect(deck.shuffle).not_to eq(pre_shuffle_deck)
    end
  end
end

describe Hand do
  let(:three_kind) { Hand.new(5)}
end
