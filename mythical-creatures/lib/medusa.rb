require './lib/person.rb'

class Medusa
  attr_reader :name
  attr_accessor :statues, :released_victims
  def initialize(name)
    @name = name
    @statues = []
  end
  def stare(victim)
    victim.stoned = true
    if @statues.length <= 2
      @statues << victim
    else
      @statues << victim
      @statues[0].stoned = false
      @statues.shift
    end
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end
  def stoned?
    @stoned
  end
end
