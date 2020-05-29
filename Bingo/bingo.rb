class Bingo
  def self.generate_card
    title = "BINGO".split("").map{|bingo| sprintf("%2s",bingo)}.join(" | ")

    numbers = [*1..75].each_slice(15).to_a.map{|b| b.sample(5)}
    numbers[2][2] = "  "
    body = []
    for i in 0..4
      body << numbers.map{|number| sprintf("%2s",number[i])}.join(' | ')
    end

    [title,body].join("\n")
  end

end

puts Bingo.generate_card