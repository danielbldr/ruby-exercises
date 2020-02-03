class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded={:bearded => true})
    @name = name
    @bearded = bearded
  end
  def bearded?
    @bearded.value?(true)
  end
end
