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

  it 'should convert 10 to X' do
    RomanNumerals.convert(10).should eq 'X'
  end

  it 'should convert 11, 12, 13 to XI, XII, XIII' do
    RomanNumerals.convert(11).should eq 'XI'
    RomanNumerals.convert(12).should eq 'XII'
    RomanNumerals.convert(13).should eq 'XIII'
  end

  it 'should convert 14 to XIV' do
    RomanNumerals.convert(14).should eq 'XIV'
  end

  it 'should convert 19 to XIX' do
    RomanNumerals.convert(19).should eq 'XIX'
  end

  it 'should convert 21 to XXI' do
    RomanNumerals.convert(21).should eq 'XXI'
  end

  it 'should convert 29 to XXIX' do
    RomanNumerals.convert(29).should eq 'XXIX'
  end

  it 'should convert 50 to L' do
    RomanNumerals.convert(50).should eq 'L'
  end
end