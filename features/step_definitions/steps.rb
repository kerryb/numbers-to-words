Given /^the number (.*)$/ do |number|
  @number = number
end

When "I convert it to words" do
  @words = ConvertsNumberToWords.for(@number).as_words
end

Then /^the words should be "(.*)"$/ do |words|
  expect(@words).to eq words
end
