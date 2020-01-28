class Horse
  attr_accessor :name, :diet

  def initialize(name, diet=[])
    @name = name
    @diet = diet
  end

  def add_to_diet(food)
     @diet << food
  end

end
