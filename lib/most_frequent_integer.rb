# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  new_arr = arr.group_by { |i| i }.values
  most_frequent = new_arr.sort_by { |v| v.length }.reverse
  unless most_frequent[0].length == most_frequent[1].length
    return most_frequent.first[0]
  end
end

