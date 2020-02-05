class TrickOrTreater
  attr_reader :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    return false if bag.candies == []
    true
  end

  def candy_count
    return 0 if bag.candies == []
    bag.candies.length
  end

  def eat
    consumed_candy = bag.candies.pop
    @sugar_level += consumed_candy.sugar
  end
end
