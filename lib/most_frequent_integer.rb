# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
   count_hash = arr.each_with_object (Hash.new(0)) { |element, counts| counts[element] += 1 }
     count_hash.each { |key, value| return key if value == count_hash.values.max }
end
