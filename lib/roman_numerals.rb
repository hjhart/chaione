class RomanNumerals
  def self.convert(remainder)
    roman_numeral = ''
    begin
      remainder, roman_numeral = reduce(remainder, roman_numeral)
    end while remainder > 0
    roman_numeral
  end

  private

  def self.reduce(remainder, roman_numeral)
    if (remainder >= 50)
      roman_numeral += 'L'
      remainder = remainder - 50
    elsif (remainder >= 10)
      roman_numeral += 'X'
      remainder = remainder - 10
    elsif (remainder == 9)
      roman_numeral += 'IX'
      remainder = remainder - 9
    elsif (remainder <= 8 && remainder >= 5)
      roman_numeral += 'V'
      remainder = remainder - 5
    elsif (remainder == 4)
      roman_numeral += 'IV'
      remainder = remainder - 4
    elsif (remainder <= 3)
      roman_numeral += 'I' * remainder
      remainder = 0
    end
    [remainder, roman_numeral]
  end
end

