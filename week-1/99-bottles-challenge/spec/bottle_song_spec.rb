require_relative '../bottle_song_lyrics'

describe 'bottle_song_lyrics' do
  it "sings 5 times" do
    expect(bottle_song_lyrics(5)).to eq "5 bottles of beer on the wall, 5 bottles of beer. Take one down, pass it around, 4 bottles of beer on the wall! 4 bottles of beer on the wall, 4 bottles of beer. Take one down, pass it around, 3 bottles of beer on the wall! 3 bottles of beer on the wall, 3 bottles of beer. Take one down, pass it around, 2 bottles of beer on the wall! 2 bottles of beer on the wall, 2 bottles of beer. Take one down, pass it around, 1 bottles of beer on the wall! 1 bottles of beer on the wall, 1 bottles of beer. Take one down, pass it around, 0 bottles of beer on the wall!"
end
end
