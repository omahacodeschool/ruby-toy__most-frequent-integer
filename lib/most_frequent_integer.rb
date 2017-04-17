# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    grouped = Hash.new(0)
    arr.each { |num| grouped[num] += 1 }
    max_quantity = grouped.values.max
    max_int = grouped.select { |k, v| v == max_quantity }.keys
    if max_int.length > 1
        return nil
    else
        return max_int[0]
    end

end