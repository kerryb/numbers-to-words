require "converts_number_to_words"

describe ConvertsNumberToWords do
  subject { ConvertsNumberToWords }

  RSpec::Matchers.define :convert do |number, args|
    match do |convertor|
      @result = convertor.for(number).as_words
      @result == args.fetch(:to)
    end

    failure_message_for_should do |actual|
      "expected #{number} to be converted to '#{args.fetch :to}'"
    end
  end

  { 1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }.each do |number, words|
    it { should convert(number, to: words) }
  end
end
