class Candy
  attr_reader :type, :sugar

  def initialize(type, sugar = 100)
    @type = type
    @sugar = sugar
  end
end
