class Dragon
  attr_reader :name, :color, :rider, :hungry, :meal_count
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @meal_count = 0
    @hungry = true
  end

  def hungry?
    @hungry
  end

  def eat
    @meal_count += 1
    @hungry = false if meal_count == 3
  end
end
