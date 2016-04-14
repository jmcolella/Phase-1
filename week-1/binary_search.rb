# def binary_search_include?(value, array)
#     if array.length == 0
#      answer = false
#      return false
#     elsif array[array.length/2] == value
#      answer = true
#      return true
#     elsif array[array.length/2] > value
#       binary_search_include?(value, array[0...array.length/2])
#     elsif array[array.length/2] < value
#       binary_search_include?(value, array[array.length/2+1..-1])
#     end
#   end

# def binary_search(value, array)
#  # index = 0
#  mid = array.length/2
#   if array.empty? == true
#      index = nil
#   elsif array[mid] == value
#      index = mid
#    elsif array[mid] > value
#      s = binary_search(value, array[0...mid])
#      return nil if s == nil
#      return s
#    elsif array[mid] < value
#      s = binary_search(value, array[mid+1..-1])
#      return nil if s == nil
#      return array.length/2 + s + 1
#    end
#    return index
#  end

 def binary_search(target, list)
   mid = list.length/2
   return false if list.empty?
   index = nil
   if list[mid] == target
     index = mid
   elsif list[mid] > target
    s =  binary_search(target, list[0...mid])
    return nil if s == nil
    return s
   elsif list[mid] < target
     s = binary_search(target, list[(mid + 1)...list.length])
     return nil if s == nil
     return mid + s + 1
   end
   return index
 end

 symbols = [:A, :B, :C, :D, :E, :F, :G, :H]
 p binary_search(:C, symbols)

 # symbols = [:A, :B, :C, :D, :E, :F, :G, :H, :I, :J, :K]

 # p binary_search(:J, symbols)
 # # => :D
 # p binary_search(:X, symbols)
 # => false