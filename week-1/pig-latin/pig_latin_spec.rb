require_relative('pig_latin')

describe 'Converting single words to Pig Latin' do

  it 'returns a String' do
    expect(convert_word_to_pig_latin("all")).to be_an_instance_of(String)
  end

  it 'returns word beginning with vowel' do
    expect(convert_word_to_pig_latin("all")).to eq "all"
  end

  it 'returns pig latin word beginning with consonant' do
    expect(convert_word_to_pig_latin("llama")).to eq "amallay"
  end
end

describe 'Converting a sentence to Pig Latin' do
  it 'returns a String' do
    expect(convert_sentence_to_pig_latin("Hello what is up")).to be_an_instance_of(String)
  end

  it 'returns a pig latin sentence' do
    expect(convert_sentence_to_pig_latin("i am a man")).to eq "i am a anmay"
  end

  it 'preserves capital letters' do
    expect(convert_sentence_to_pig_latin("I am A Man")).to eq "I am A Anmay"
  end

  it 'preserves punctuation' do
    expect(convert_sentence_to_pig_latin("Hello!! what is up???")).to eq "Ellohay!! atwhay is up???"
  end
end