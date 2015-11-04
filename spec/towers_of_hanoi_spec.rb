require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:tower) { TowersOfHanoi.new }
  let(:won_tower) { TowersOfHanoi.new([[], [1,2,3,4], []]) }
  describe "#move" do

    it "initializes to default starting position" do
      expect(tower.stack).to eq([[1,2,3,4],[],[]])
    end

    it "initializes with paramaters" do
      expect(won_tower.stack).to eq([[, ][1,2,3,4],[])
    end

    it "moves a disk" do
      tower.move(0,1)
      expect(tower.stack).to eq([[2,3,4],[1],[]])

    end

    it "raises an error if user tries to move onto smaller tile" do
      expect([[2,3,4],[1],[]])
    end

  end
end
