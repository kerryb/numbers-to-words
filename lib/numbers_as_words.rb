module NumbersAsWords
  UNITS = %w{zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = %w{_ _ twenty thirty forty fifty sixty seventy eighty ninety}

  def as_words
    case self
    when 0..19
      UNITS[self]
    else
      TENS[self/10]
    end
  end
end
