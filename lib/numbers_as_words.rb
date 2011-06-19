module NumbersAsWords
  def as_words
    (1..999_999_999).include?(self) ? as_words_or_nil : to_s
  end

  UNITS_AND_TEENS = [nil] + %w{one two three four five six seven eight nine ten} +
    %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = [nil, nil] + %w{twenty thirty forty fifty sixty seventy eighty ninety}

  def as_words_or_nil
    case self
    when 0
      nil
    when 1..99
      [tens, units_and_teens].compact.join "-"
    when 100..999
      [hundreds, (self % 100).as_words_or_nil].compact.join " and "
    when 1000..999_999
      ["#{(self/1000).as_words} thousand", (self % 1000).as_words_or_nil].compact.join thousands_joiner(self % 1000)
    when 1000_000..999_999_999
      [["#{(self/1000_000).as_words} million", "#{((self % 1000_000)/1000).as_words} thousand"].join(", "),
        (self % 1000).as_words_or_nil].compact.join thousands_joiner(self % 1000_000)
    end
  end

  def units_and_teens
    UNITS_AND_TEENS[self] || UNITS_AND_TEENS[self % 10]
  end

  def tens
    TENS[self/10]
  end

  def hundreds
    "#{UNITS_AND_TEENS[self/100]} hundred"
  end

  def thousands_joiner remainder
    case remainder
    when (100..999) then ", "
    when (1..99) then " and "
    else " "
    end
  end
end
