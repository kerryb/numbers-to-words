require "converts_number_to_words"

describe ConvertsNumberToWords do
  subject { ConvertsNumberToWords }

  RSpec::Matchers.define :convert do |number, args|
    match {|convertor| convertor.for(number).as_words == args.fetch(:to) }
  end

  { 1 => "one",
    2 => "two"
  }.each do |number, words|
    it { should convert(number, to: words) }
  end
end
