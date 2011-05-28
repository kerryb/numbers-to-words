module NumbersAsWords
  UNITS_AND_TEENS = [nil] + %w{one two three four five six seven eight nine ten} +
    %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = [nil, nil] + %w{twenty thirty forty fifty sixty seventy eighty ninety}

  def as_words
    case self
    when 0
      nil
    when 1..99
      [tens, units_and_teens].compact.join "-"
    else
      [hundreds, (self % 100).as_words].compact.join " and "
    end
  end

  private

  def units_and_teens
    UNITS_AND_TEENS[self] || UNITS_AND_TEENS[self % 10]
  end

  def tens
    TENS[self/10]
  end

  def hundreds
    "#{UNITS_AND_TEENS[self/100]} hundred"
  end
end
