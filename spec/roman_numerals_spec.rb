require 'rspec'
require 'roman_numerals'

describe RomanNumerals do
  it 'should convert the number 1 to I' do
    RomanNumerals.convert(1).should eq 'I'
    RomanNumerals.convert(2).should eq 'II'
    RomanNumerals.convert(3).should eq 'III'
  end

  it 'should convert 4 to IV' do
    RomanNumerals.convert(4).should eq 'IV'
  end

  it 'should convert 5 to V' do
    RomanNumerals.convert(5).should eq 'V'
  end
end