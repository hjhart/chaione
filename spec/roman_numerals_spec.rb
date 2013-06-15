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

  it 'should convert 49 to IL' do
    RomanNumerals.convert(49).should eq 'IL'
  end

  it 'should convert 50 to L' do
    RomanNumerals.convert(50).should eq 'L'
  end

  it 'should convert 59 to LIX' do
    RomanNumerals.convert(59).should eq 'LIX'
  end

  it 'should convert 99 to IC' do
    RomanNumerals.convert(99).should eq 'IC'
  end

  it 'should convert 100 to C' do
    RomanNumerals.convert(100).should eq 'C'
  end

  it 'should convert 499 to D' do
    RomanNumerals.convert(499).should eq 'ID'
  end

  it 'should convert 500 to D' do
    RomanNumerals.convert(500).should eq 'D'
  end

  it 'should convert 999 to M' do
    RomanNumerals.convert(999).should eq 'IM'
  end

  it 'should convert 1000 to M' do
    RomanNumerals.convert(1000).should eq 'M'
  end

  it 'should convert 1999 to M' do
    RomanNumerals.convert(1999).should eq 'MIM'
  end

  it 'should convert 2000 to MM' do
    RomanNumerals.convert(2000).should eq 'MM'
  end

  it 'should convert 10000 to MMMMMMMMMM' do
    RomanNumerals.convert(10000).should eq 'MMMMMMMMMM'
  end
end