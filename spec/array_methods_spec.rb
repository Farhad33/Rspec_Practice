require 'rspec'
require 'array_methods.rb'

describe Array do

  describe "#my_uniq" do
    it "removes duplicates elements" do
      expect([1,1,2,2,3,3].my_uniq).to eq([1,2,3])
    end

    it "does not change the order of elements" do
      expect([3,3,4,1,5,5].my_uniq).to eq([3,4,1,5])
    end

    it "returns one elements array" do
      expect([3].my_uniq).to eq([3])
    end

    it "returns an empty array" do
      expect([].my_uniq).to eq([])
    end

    it "does not compare elements of sub-arrays" do
      expect([[1,2,3],[1,2,3],1,2,3].my_uniq).to eq([[1,2,3],1,2,3])
    end

    it "does not modify the original array" do
      array = [1,2,2,3,4,4]
      array_dup = array.dup

      array.my_uniq

      expect(array).to eq(array_dup)
  end

  describe "#two_sum" do
    it "returns an empty array when passed" do
      expect([].two_sum).to eq([])
    end

    it "finds matching idices" do
      expect([-1, 1].two_sum).to eq([[0,1]])
    end

    it "finds indices of two sums" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
    end

    it "lists smaller first index first" do
      expect([-1, -2, 0, 1, 2].two_sum).to eq([[0,3],[2,4]])
    end

    it "list smaller second index after first"
      expect([-1, -2, 0, 1, 1].two_sum).to eq([[0,3],[0,4]])
    end
  end

  describe "#my_transpose" do
    it "transposes a matrix" do
      matrix = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
      matrix_trans = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
      expect(my_transpose(matrix)).to eq(matrix_trans)
    end

    it "transposes an empty array" do
      expect(my_transpose([])).to eq([])
    end

    it "transposes a single element array" do
      expect(my_transpose([1])).to eq([1])
    end

    it "does not modify orginal array" do
      matrix = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
      matrix_dup = matrix.dup

      my_transpose(matrix)

      expect(matrix).to eq(matrix_dup)
    end
  end

  describe "#stock_picker" do
    it "finds the most profitable pair of days" do
      stock_prices = [3, 6, 5, 8]
      expect(stock_picker(stock_prices)).to eq([0,3])
    end

    it "does not pick absolute greatest difference" do
      stock_prices = [9, 3, 6, 5, 8]
      expect(stock_picker(stock_prices)).to eq([1,4])
    end

    it "does something" do
      stock_prices = [9, 1, 2, 3, 3, 6, 2, 4, 4]
      expect(stock_picker(stock_prices)).to eq([1,5])
    end
  end
  end
