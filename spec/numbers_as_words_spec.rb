require "rspec"
$: << File.expand_path("../lib", __FILE__)
require "numbers_as_words"

Integer.send :include, NumbersAsWords

describe "Numbers as words" do
  context "single digits" do
    {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
      6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}.each do |number, word|

      it "converts #{number} to '#{word}'" do
        number.as_words.should == word
      end
    end
  end
end
