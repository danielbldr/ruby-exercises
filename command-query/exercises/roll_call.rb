class RollCall
  attr_reader :longest_name

  def initialize
    @longest_name = nil
  end

  def <<(name)
    if @longest_name == nil
      @longest_name = name
    else
      name.length > @longest_name.length ? @longest_name = name : @longest_name
    end
  end
end
