def convert_table(array)
  return_array = []
  array.each do |row|
    data_hash = Hash.new
    data_hash[array[0][0]] = row[0]
    data_hash[array[0][1]] = row[1]
    data_hash[array[0][2]] = row[2]
    data_hash[array[0][3]] = row[3]
    return_array.push(data_hash)
  end

  return return_array[1..3]
end

table_data = [
  ["first_name", "last_name", "city", "state"],
  ["Elisabeth", "Gardenar", "Toledo", "OH"],
  ["Jamaal", "Du", "Sylvania", "OH"],
  ["Kathlyn", "Lavoie", "Maumee", "OH"]
]

p convert_table(table_data)

#  { "first_name" => "Elisabeth", "last_name" => "Gardenar", "city" => "Toledo", "state" => "OH" },
#  { "first_name" => "Jamaal", "last_name" => "Du", "city" => "Sylvania", "state" => "OH" },
#  { "first_name" => "Kathlyn", "last_name" => "Lavoie", "city" => "Maumee", "state" => "OH" }
# ]