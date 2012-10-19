class ConvertsNumberToWords
  def initialize number
    @number = number
  end
  class << self
    alias for new
  end

  def as_words
    @number == 1 ?  "one" : "two"
  end
end
