# def convert_to_roman(arabic_number, options = {})
#   roman_numerals = {
#     1000 => "M",
#     500 => "D",
#     100 => "C",
#     50 => "L",
#     10 => "X",
#     5 => "V",
#     1 => "I",
#   }
#   modern_roman_numerals = {
#     1000 => "M",
#     900 => "CM",
#     500 => "D",
#     400 => "CD",
#     100 => "C",
#     90 => "XC",
#     50 => "L",
#     40 => "XL",
#     10 => "X",
#     9 => "IX",
#     5 => "V",
#     4 => "IV",
#     1 => "I",
#   }
#   roman_numeral_array = []
#   remainder_number = arabic_number
#   if options == {modern: true}
#     modern_roman_numerals.each do |num, letter|
#       if remainder_number >= 1000
#         roman_numeral_array << (modern_roman_numerals[1000] * (remainder_number / 1000))
#         remainder_number = remainder_number - (1000 * (remainder_number/1000))
#       elsif remainder_number >= 900
#         roman_numeral_array << (modern_roman_numerals[900] * (remainder_number / 900))
#         remainder_number = remainder_number - (900 * (remainder_number/900))
#       elsif remainder_number >= 500
#         roman_numeral_array << (modern_roman_numerals[500] * (remainder_number / 500))
#         remainder_number = remainder_number - (500 * (remainder_number/500))
#       elsif remainder_number >= 400
#         roman_numeral_array << (modern_roman_numerals[400] * (remainder_number / 400))
#         remainder_number = remainder_number - (400 * (remainder_number/400))
#       elsif remainder_number >= 100
#         roman_numeral_array << (modern_roman_numerals[100] * (remainder_number / 100))
#         remainder_number = remainder_number - (100 * (remainder_number/100))
#       elsif remainder_number >= 90
#         roman_numeral_array << (modern_roman_numerals[90] * (remainder_number / 90))
#         remainder_number = remainder_number - (90 * (remainder_number/90))
#       elsif remainder_number >= 50
#         roman_numeral_array << (modern_roman_numerals[50] * (remainder_number / 50))
#         remainder_number = remainder_number - (50 * (remainder_number/50))
#       elsif remainder_number >= 40
#         roman_numeral_array << (modern_roman_numerals[40] * (remainder_number / 40))
#         remainder_number = remainder_number - (40 * (remainder_number/40))
#       elsif remainder_number >= 10
#         roman_numeral_array << (modern_roman_numerals[10] * (remainder_number / 10))
#         remainder_number = remainder_number - (10 * (remainder_number/10))
#       elsif remainder_number >= 9
#         roman_numeral_array << (modern_roman_numerals[9] * (remainder_number / 9))
#         remainder_number = remainder_number - (9 * (remainder_number/9))
#       elsif remainder_number >= 5
#         roman_numeral_array << (modern_roman_numerals[5] * (remainder_number / 5))
#         remainder_number = remainder_number - (5 * (remainder_number/5))
#       elsif remainder_number >= 4
#         roman_numeral_array << (modern_roman_numerals[4] * (remainder_number / 4))
#         remainder_number = remainder_number - (4 * (remainder_number/4))
#       elsif remainder_number >= 1
#         roman_numeral_array << (modern_roman_numerals[1] * (remainder_number / 1))
#         remainder_number = remainder_number - (1 * (remainder_number/1))
#       end
#     end
#   else
#     roman_numerals.each do |num, letter|
#     if remainder_number >= 1000
#         roman_numeral_array << (roman_numerals[1000] * (remainder_number / 1000))
#         remainder_number = remainder_number - (1000 * (remainder_number/1000))
#     elsif remainder_number >= 500
#         roman_numeral_array << (roman_numerals[500] * (remainder_number / 500))
#         remainder_number = remainder_number - (500 * (remainder_number/500))
#     elsif remainder_number >= 100
#         roman_numeral_array << (roman_numerals[100] * (remainder_number / 100))
#         remainder_number = remainder_number - (100 * (remainder_number/100))
#     elsif remainder_number >= 50
#         roman_numeral_array << (roman_numerals[50] * (remainder_number / 50))
#         remainder_number = remainder_number - (50 * (remainder_number/50))
#     elsif remainder_number >= 10
#         roman_numeral_array << (roman_numerals[10] * (remainder_number / 10))
#         remainder_number = remainder_number - (10 * (remainder_number/10))
#     elsif remainder_number >= 5
#         roman_numeral_array << (roman_numerals[5] * (remainder_number / 5))
#         remainder_number = remainder_number - (5 * (remainder_number/5))
#     elsif remainder_number >= 1
#         roman_numeral_array << (roman_numerals[1] * (remainder_number / 1))
#         remainder_number = remainder_number - (1 * (remainder_number/1))
#     end
#     end
#   end
#  p roman_numeral_array.join("")
# end



# Refactored Solution

def convert_to_roman(arabic_number, options = {})
  roman_numerals = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I",
  }
  roman_numeral_array = []
  roman_numerals.each do |arab, roman|
    numeral = roman * (arabic_number / arab)
    arabic_number = arabic_number % arab
    roman_numeral_array << numeral
  end
  numeral_string = roman_numeral_array.join("")
  if options == {modern: true}
    p numeral_string.gsub("DCCCC", "CM").gsub("CCCC", "CD").gsub("LXXXX", "XC").gsub("XXXX", "XL").gsub("VIIII", "IX").gsub("IIII", "IV")
  else
    p numeral_string
  end
end


convert_to_roman(1100)
convert_to_roman(2002)
convert_to_roman(222)
convert_to_roman(40, modern: true)
convert_to_roman(944, modern: true)
convert_to_roman(440, modern: true)
convert_to_roman(1994, modern: true)