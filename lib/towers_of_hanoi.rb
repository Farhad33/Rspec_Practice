class TowersOfHanoi

  attr_reader :stack

  def initialize(default = [[1,2,3,4],[],[]])
    @stack ||= default
  end

  def move(from, to)
    disk = stack[from].shift
    unless stack[to].first.nil? || disk < stack[to].first
      raise "Not valid move"
    end
    stack[to].unshift(disk)
  end

  def render
    "Tower 1: #{stack[0].join(" ")} Tower 2: #{stack[1].join(" ")} Tower 3: #{stack[2].join(" ")}"
  end

  def won?
    return true if stack == [[],[1,2,3,4],[]]
    return true if stack == [[],[],[1,2,3,4]]
    false
  end

end
