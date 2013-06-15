class RomanNumerals
  def self.convert(number)
    roman_numeral = ''
    remainder = number
    if(remainder == 5)
      roman_numeral += 'V'
      remainder = number - 5
    end
    if(remainder == 4)
      roman_numeral += 'IV'
      remainder = number - 4
    end
    if(remainder <= 3)
      roman_numeral += 'I' * remainder
    end
  end
end