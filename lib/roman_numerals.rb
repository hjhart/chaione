class RomanNumerals
  def self.convert(number)
    roman_numeral = ''
    remainder = number
    if(remainder == 10)
      roman_numeral += 'X'
      remainder = remainder - 10
    end
    if(remainder == 9)
      roman_numeral += 'IX'
      remainder = remainder - 9
    end
    if(remainder <= 8 && remainder >= 5)
      roman_numeral += 'V'
      remainder = remainder - 5
    end
    if(remainder == 4)
      roman_numeral += 'IV'
      remainder = remainder - 4
    end
    if(remainder <= 3 && remainder != 0)
      roman_numeral += 'I' * remainder
    end
    roman_numeral
  end
end