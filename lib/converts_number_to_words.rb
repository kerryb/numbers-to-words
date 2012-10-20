class ConvertsNumberToWords
  UP_TO_TWENTY = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
   "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  def initialize number
    @number = number
  end
  class << self
    alias for new
  end

  def as_words
    UP_TO_TWENTY[@number]
  end
end
