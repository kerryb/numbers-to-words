require "rspec"
$: << File.expand_path("../lib", __FILE__)
require "numbers_as_words"

Integer.send :include, NumbersAsWords

describe "Numbers as words" do
  context "Unsupported values" do
    [-1, 0, 1_000_000].each do |number|
      it "performs a simple to_s on #{number}" do
        number.as_words.should == number.to_s
      end
    end
  end

  context "single digits" do
    {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
      6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "10 - 19" do
    {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
      16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "multiples of ten" do
    {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
      70 => "seventy", 80 => "eighty", 90 => "ninety"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "two digit numbers" do
    {21 => "twenty-one", 42 => "forty-two", 69 => "sixty-nine"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "three digit numbers" do
    {100 => "one hundred", 123 => "one hundred and twenty-three", 369 => "three hundred and sixty-nine",
      420 => "four hundred and twenty", 901 => "nine hundred and one"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "thousands" do
    {1_000 => "one thousand", 12_000 => "twelve thousand",
      345_000 => "three hundred and forty-five thousand"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end

  context "1,000 - 999,999" do
    {1_234 => "one thousand two hundred and thirty-four", 12_400 => "twelve thousand four hundred",
      99_099 => "ninety-nine thousand and ninety-nine",
      456_001 => "four hundred and fifty-six thousand and one"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end
end
