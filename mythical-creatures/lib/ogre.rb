class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter
    @encounter_counter += 1
    if human.encounter_counter % 3 == 0
      @swings += 1
    end
    true
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.regain_consciousness
  end
end

class Human
  attr_reader :name, :encounter_counter, :knock_out

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knock_out = false
    @regained_conciousness = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    return true if @encounter_counter % 3 == 0
    false
  end

  def knocked_out?
    @knock_out = true if (@encounter_counter % 6 == 0) && (@regained_conciousness == false)
    @knock_out
  end

  def regain_consciousness
    @knock_out = false
    @regained_conciousness = true
  end
end
