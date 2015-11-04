require 'rspec'
require 'towers_of_hanoi.rb'

describe TowersOfHanoi do
  let(:tower) { TowersOfHanoi.new }
  let(:won_tower) { TowersOfHanoi.new([[], [1,2,3,4], []]) }

  describe "#move" do
    it "initializes to default starting position" do
      expect(tower.stack).to eq([[1,2,3,4],[],[]])
    end

    it "initializes with paramaters" do
      expect(won_tower.stack).to eq([[], [1,2,3,4],[]])
    end

    it "moves a disk" do
      tower.move(0,1)
      expect(tower.stack).to eq([[2,3,4],[1],[]])
    end

    # it "raises an error if user tries to move onto smaller tile" do
    #   mid_tower = TowersOfHanoi.new([[2,3,4],[1],[]])
    #   expect(mid_tower.move(0, 1)).to raise_error("Not valid move")
    # end
  end

  describe "#render" do
    it "shows user current state" do
      tower_display = "Tower 1: #{tower.stack[0].join(" ")} Tower 2: #{tower.stack[1].join(" ")} Tower 3: #{tower.stack[2].join(" ")}"
      expect(tower.render).to eq(tower_display)
    end
  end

  describe "#won?" do
    it "recognizes a winning board on middle pile" do
      expect(won_tower.won?).to be true
    end

    it "recognizes a winning board last pile" do
      last_stack_win = TowersOfHanoi.new([[],[],[1,2,3,4]])
      expect(last_stack_win.won?).to be true
    end

    it "does not declare winner on first pile" do
      expect(tower.won?).to be false
    end

    it "does not declare won if game not won" do
      no_stack_win = TowersOfHanoi.new([[3,4],[1],[2]])
      expect(no_stack_win.won?).to be false
    end
  end

end
