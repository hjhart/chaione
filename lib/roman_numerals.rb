class RomanNumerals
  def self.convert(remainder)
    roman_numeral = ''
    while remainder > 0
      remainder, roman_numeral = reduce(remainder, roman_numeral)
    end
    roman_numeral
  end

  private

  def self.roman_numerals
    [{
         number: 1000,
         letter: 'M'
     },
     {
         number: 500,
         letter: 'D'
     },
     {
         number: 100,
         letter: 'C'
     },
     {
         number: 50,
         letter: 'L'
     },
     {
         number: 10,
         letter: 'X'
     },
     {
         number: 5,
         letter: 'V'
     },
     {
         number: 1,
         letter: 'I'
     }]
  end

  def self.reduce(remainder, roman_numeral)
    highest_roman_numeral = roman_numerals.detect { |roman_numeral| roman_numeral[:number] - 1 <= remainder }

    roman_numeral += "I" if (highest_roman_numeral[:number] - 1 == remainder)
    roman_numeral += highest_roman_numeral[:letter]
    remainder -= highest_roman_numeral[:number]
    [remainder, roman_numeral]
  end
end

