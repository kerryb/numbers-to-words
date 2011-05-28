module NumbersAsWords
  UNITS = %w{zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = %w{_ _ twenty thirty forty fifty sixty seventy eighty ninety}

  def as_words
    case self
    when 0..19
      UNITS[self]
    when *((20..90).step 10)
      TENS[self/10]
    when 20..99
      "#{TENS[self/10]}-#{UNITS[self % 10]}"
    when *((100..900).step 100)
      "#{UNITS[self/100]} hundred"
    else
      "#{UNITS[self/100]} hundred and #{(self % 100).as_words}"
    end
  end
end
