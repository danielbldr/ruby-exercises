class Werewolf
  attr_reader :name, :location, :human
  attr_accessor :change_counter, :hungry
  def initialize(name_parameter, location_parameter="London")
    @name = name_parameter
    @location = location_parameter
    @human = true
    @wolf = false
    @hungry = false
  end
  def human?
    @human
  end
  def change!
    if @human == true
      @human = false
      @wolf = true
      @hungry = true
    else
      @human = true
      @wolf = false
      @hungry = false
    end
  end
  def wolf?
    @wolf
  end
  def hungry?
    @hungry
  end
  def consumes_a_victim(victim)
    if self.human == false
      victim.status = :dead
      @hungry = false
    else
      p "Is a human"
    end
  end
end
