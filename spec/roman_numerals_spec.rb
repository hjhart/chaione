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

  it 'should convert 6 through 8 similarly' do
    RomanNumerals.convert(6).should eq 'VI'
    RomanNumerals.convert(7).should eq 'VII'
    RomanNumerals.convert(8).should eq 'VIII'
  end

  it 'should convert 9 to IX' do
    RomanNumerals.convert(9).should eq 'IX'
  end

  it 'should convert 5 to V' do
    RomanNumerals.convert(10).should eq 'X'
  end
end