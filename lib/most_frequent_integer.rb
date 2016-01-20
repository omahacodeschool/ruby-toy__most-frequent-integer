# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  counter = Hash.new(0)
  arr.each do |i|
    counter[i] += 1
  end
  array = []
  counter.each do |k, v|
    if v == counter.values.max
      array << k
    end
  end
  array.to_s
end