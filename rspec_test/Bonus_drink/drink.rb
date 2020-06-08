class BonusDrink
  def self.total_count_for(amount)
    if amount.zero?
      0
    elsif amount.odd?
      3 * amount / 2
    elsif amount.even?
      3 * (amount - 1) / 2 + 1
    end
  end
end
