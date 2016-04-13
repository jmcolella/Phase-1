# Your code here
def convert_word_to_pig_latin(word)
  return word if word[0].match(/[aeiou]/)
  cons_index = word.index(/[aeiou]/)
  consonant = word[0...cons_index]
  pig_latin_word = word[cons_index..word.length-1] + consonant + "ay"
  return pig_latin_word
end

def convert_sentence_to_pig_latin(sentence)
  sentence_array = sentence.split
  pig_latin_sentence = []
  sentence_array.each do |word|
    punctuation = word.scan(/\W+/).join
    punc_index = word.index(/\W+/)
    if punctuation.length > 0
      pl_word = convert_word_to_pig_latin(word[0...punc_index].downcase) + punctuation
      pl_word.capitalize! if word == word.capitalize
      pl_word.upcase! if word == word.upcase
      pig_latin_sentence << pl_word
    else
      pl_word = convert_word_to_pig_latin(word.downcase)
      pl_word.capitalize! if word == word.capitalize
      pl_word.upcase! if word == word.upcase
      pig_latin_sentence << pl_word
    end
  end
  return pig_latin_sentence.join(" ")
end

# convert_word_to_pig_latin("hello")

# p convert_sentence_to_pig_latin("Hello! I am John!")





