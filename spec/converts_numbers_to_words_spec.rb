require "converts_number_to_words"

describe ConvertsNumberToWords do
  it "converts 1 to 'one'" do
    expect(ConvertsNumberToWords.for(1).as_words).to eq "one"
  end
end
