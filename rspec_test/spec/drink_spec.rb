require_relative '../Bonus_drink/drink'

RSpec.describe BonusDrink do
  it "total_count_for" do
    expect(BonusDrink.total_count_for(0)).to eq 0
    expect(BonusDrink.total_count_for(1)).to eq 1
    expect(BonusDrink.total_count_for(3)).to eq 4
    expect(BonusDrink.total_count_for(11)).to eq 16
    expect(BonusDrink.total_count_for(100)).to eq 149
  end
end