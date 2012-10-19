class ConvertsNumberToWords
  def initialize number
    @number = number
  end
  class << self
    alias for new
  end

  def as_words
  end
end
