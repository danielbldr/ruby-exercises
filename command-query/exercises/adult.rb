class Adult
  def initialize
    @drink_counter = 0
  end
  def sober?
    return false if @drink_counter >= 3
    true
  end
  def consume_an_alcoholic_beverage
    @drink_counter += 1
  end
end
