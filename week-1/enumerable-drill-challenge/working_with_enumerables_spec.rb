require_relative 'working_with_enumerables'

describe 'odd_integers' do
  it 'returns a collection of any odd integers' do
    numbers = [3, 4, 7, 9, 10, 16]

    odds = odd_integers(numbers)
    expect(odds).to match_array [3, 7, 9]
  end
end

describe 'first_under' do
  it 'returns the first number under "limit"' do
    numbers = [13, 21, 7, 0, 11, 106]

    number = first_under(numbers, 10)
    expect(number).to eq 7
  end
end

describe 'add_bang' do
  it 'returns a collection with an exclamation point added to each element' do
    strings = ['hi', 'mom']

    with_bang = add_bang(strings)
    expect(with_bang).to eq ['hi!', 'mom!']
  end
end

describe 'sum' do
  it 'sums the elements in a collection' do
    numbers = [1, 1, 2, 3, 5]

    total = sum(numbers)
    expect(total).to eq 12
  end
end

describe 'sorted_triples' do
  it 're-organizes a collection into groups of three and sorts each group alphabetically' do
    words = %w(the salted pork is particularly good)

    expect(sorted_triples(words)).to eq [['pork', 'salted', 'the'],
                                         ['good', 'is', 'particularly']]
  end
end

describe 'odd_indexed_elements' do
  it 'returns a collection of the elements at odd indices' do
    strings = ['foo','bar','baz','bang']

    elements = odd_indexed_elements(strings)
    expect(elements).to match_array ['bar','bang']
  end
end