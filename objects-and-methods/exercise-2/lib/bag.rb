class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end
  def empty?
    return true if @candies == []
    false
  end
  def count
    @candies.length
  end
  def <<(candy)
    @candies << candy
  end
  def contains?(type)
    return true if @candies.find do |candy|
      candy.type == type
    end
    false
  end
  def grab candy_of_choice
    found_candy = @candies.find do |candy|
      found_candy_index = candies.index(candy)
      @candies.delete(candy)
    end
  end
  def take(number)
    @candies.pop(number)
  end
end
