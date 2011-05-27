module NumbersAsWords
  WORDS = %w{zero one two three four five six seven eight nine}

  def as_words
    WORDS[self]
  end
end
