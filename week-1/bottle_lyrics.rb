
# Takes as its input an integer +n+ representing the starting number of bottles.
# Returns the lyrics to "n Bottles of Beer".

def bottle_song_lyrics(n)
  "The lyrics to #{n} Bottles of Beer"
  counter = n
  while counter > 2
    p "#{counter} bottles of beer on the wall, #{counter} bottles of beer. Take one down, pass it around, #{counter - 1} bottles of beer on the wall!"
    counter -= 1
  end
  while counter > 1
    p "#{counter} bottles of beer on the wall, #{counter} bottles of beer. Take one down, pass it around, #{counter - 1} bottle of beer on the wall!"
    counter -=1
  end
  while counter > 0
    p "#{counter} bottle of beer on the wall, #{counter} bottle of beer. Take one down, pass it around, no more bottles of beer on the wall!"
    counter -= 1
  end
end

# Driver Code

bottle_song_lyrics(5)