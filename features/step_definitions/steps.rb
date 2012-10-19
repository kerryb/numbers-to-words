$:.unshift "lib"
require "converts_number_to_words"

Given /^the number (.*)$/ do |number|
  @number = number.to_i
end

When "I convert it to words" do
  @words = ConvertsNumberToWords.for(@number).as_words
end

Then /^the words should be "(.*)"$/ do |words|
  expect(@words).to eq words
end
