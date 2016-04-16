require_relative 'word_search'

describe 'straight_line_include?' do
  let(:puzzle) {[
  ["a", "b", "f", "o", "x", "e", "s"],
  ["s", "o", "r", "w", "a", "h", "p"],
  ["b", "t", "c", "e", "e", "n", "n"],
  ["o", "t", "s", "d", "h", "o", "t"],
  ["h", "e", "g", "g", "s", "o", "b"],
  ["u", "r", "p", "i", "w", "u", "t"],
  ["z", "s", "l", "n", "g", "i", "r"]
]}

  it '1. returns true if the word is horizontal' do
    expect(straight_line_include?("foxes", puzzle)).to eq(true)
  end

  it '2. returns true if the word is vertical' do
    expect(straight_line_include?("otters", puzzle)).to eq(true)
  end

  it '3. returns true if the word is left to right diagonal' do
    expect(straight_line_include?("brehot", puzzle)).to eq(true)
  end

  it '4. returns true if the word is right to left diagonal' do
    expect(straight_line_include?("bug", puzzle)).to eq(true)
  end

  it '5. returns true if the word is right to left diagonal' do
    expect(straight_line_include?("ueseae", puzzle)).to eq(true)
  end

  it '6. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("bus", puzzle)).to eq(false)
  end

  it '7. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("ssts", puzzle)).to eq(false)
  end

  it '8. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("bsnos", puzzle)).to eq(false)
  end

  it '9. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("sonsb", puzzle)).to eq(false)
  end

  it '10. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("anthrl", puzzle)).to eq(false)
  end

  it '11. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("epbtg", puzzle)).to eq(false)
  end

  it '12. returns true if the word is right to left diagonal' do
    expect(straight_line_include?("gigtb", puzzle)).to eq(true)
  end

  it '13. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("apn", puzzle)).to eq(false)
  end

  it '14. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("nhxnpe", puzzle)).to eq(false)
  end

  it '15. returns false if the word is on a diagonal but at the edge of the game' do
    expect(straight_line_include?("eaer", puzzle)).to eq(false)
  end
end