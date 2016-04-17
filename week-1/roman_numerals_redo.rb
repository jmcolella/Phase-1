def roman_numeral_convert(number)
  numerals = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I",
  }

  numeral_string = ""

  numerals.each do |arab_num, numeral|
    numeral_string << (numeral * (number/arab_num))
    number = number % arab_num
  end

  return numeral_string.gsub("DCCCC", "CM").gsub("CCCC", "CD").gsub("LXXXX", "XC").gsub("XXXX", "XL").gsub("VIIII", "IX").gsub("IIII", "IV")
end

p roman_numeral_convert(4)
p roman_numeral_convert(50)
p roman_numeral_convert(900)
p roman_numeral_convert(1994)