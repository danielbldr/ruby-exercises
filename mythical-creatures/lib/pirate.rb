class Pirate
  attr_reader :name, :job, :cursed, :cursed_counter, :booty
  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = true
    @cursed_counter = 0
    @booty = 0
  end
  def cursed?
    return true if @cursed_counter == 3
    false
  end
  def commit_heinous_act
    @cursed_counter +=1
  end
  def rob
    @booty = 100
  end
end
