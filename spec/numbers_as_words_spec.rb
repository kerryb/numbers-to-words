require "rspec"
$: << File.expand_path("../lib", __FILE__)
require "numbers_as_words"

Integer.send :include, NumbersAsWords

describe "Numbers as words" do
  it "converts 1 to 'one'" do
    1.as_words.should == "one"
  end

  it "converts 2 to 'two'" do
    2.as_words.should == "two"
  end
end
