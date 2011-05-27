module NumbersAsWords
  WORDS = %w{zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

  def as_words
    WORDS[self]
  end
end
