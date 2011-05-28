module NumbersAsWords
  UNITS = [nil] + %w{one two three four five six seven eight nine ten} +
    %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = [nil, nil] + %w{twenty thirty forty fifty sixty seventy eighty ninety}

  def as_words
    case self
    when 0
      "zero"
    when 1..19
      UNITS[self]
    when 20..99
      [TENS[self/10], UNITS[self % 10]].compact.join "-"
    else
      (["#{UNITS[self/100]} hundred", (self % 100).as_words] - [nil, "zero"]).join " and "
    end
  end
end
