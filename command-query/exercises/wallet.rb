class Wallet
  def initialize
    @cents = []
    @money = {:penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}

  end

  def <<(symbol)
    @cents << @money[symbol]
  end

  def cents
    return 0 if @cents == []
    @cents.inject do |memo, num|
      memo = memo + num
    end
  end

  def take(*symbols)
    values_to_remove = symbols.map { |symbol| @money[symbol] }
    to_delete_at = []
    values_to_remove.find_all do |value_to_remove|
      to_delete_at << @cents.index(value_to_remove)
    end
    to_delete_at.reverse.drop_while do |index|
      return false if index == nil
      @cents.delete_at(index)
    end
  end
end
