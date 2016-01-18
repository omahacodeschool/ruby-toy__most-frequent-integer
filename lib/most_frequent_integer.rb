# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
arr.group_by do |e|
    e
  end.values.max_by(&:size).first
end

print find_most_frequent_integer(arr)