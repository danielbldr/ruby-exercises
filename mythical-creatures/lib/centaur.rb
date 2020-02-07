class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
  end

  def shoot
    return "NO!" if !@standing
    @cranky += 1
    return "Twang!!!" if @cranky < 3
    "NO!"
  end

  def run
    return "NO!" if laying?
    @cranky += 1
    return "Clop clop clop clop!!!" if @cranky < 3
    "NO!"
  end

  def cranky?
    return true if @cranky >= 3
    false
  end

  def standing?
    @standing
  end

  def sleep
    return "NO!" if standing?
    @cranky = 0
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def potion
    return "Sick" if @cranky == 0
    return false if @standing == false
    @cranky = 0
  end
end
