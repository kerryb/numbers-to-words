require "rspec"
$: << File.expand_path("../lib", __FILE__)
require "numbers_as_words"

describe "Numbers as words" do
  it "converts 1 to 'one'" do
    1.as_words.should == "one"
  end
end
