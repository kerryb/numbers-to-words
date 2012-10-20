class ConvertsNumberToWords
  UP_TO_TWENTY = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
   "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  DECADES = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  def initialize number
    @number = number
  end
  class << self
    alias for new
  end

  def as_words
    @number > 19 ? DECADES[@number/10] : UP_TO_TWENTY[@number]
  end
end
