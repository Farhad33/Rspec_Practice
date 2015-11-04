class Array

  def my_uniq
    no_repeats = []
    each { |el| no_repeats << el unless no_repeats.include?(el)}
    no_repeats
  end

  def two_sum
    arr = []
    each_with_index do |el, i|
      (i+1).upto(length-1) do |j|
        if (el + self[j]) == 0
          arr << [i, j]
        end
      end
    end
    arr
  end
end

  def my_transpose(input)
    arr = []
    input.each_with_index do |el1, i|
      row = []
      input.each do |el2|
        row << el2[i]
      end
      arr << row
    end
    arr
  end

  def stock_picker(prices)
    buy_and_sell = []
    price_difference = 0

    prices.each_with_index do |buy, i|
      (i+1).upto(prices.length-1) do |j|
        temp_price_diff = prices[j] - buy
        if temp_price_diff > price_difference
          price_difference = temp_price_diff
          buy_and_sell = [i, j]
        end
      end
    end
    buy_and_sell
  end
