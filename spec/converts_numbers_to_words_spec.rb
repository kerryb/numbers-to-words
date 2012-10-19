require "converts_number_to_words"

describe ConvertsNumberToWords do
  { 1 => "one",
    2 => "two"
  }.each do |number, words|
    it "converts #{number} to '#{words}'" do
      expect(ConvertsNumberToWords.for(number).as_words).to eq words
    end
  end
end
