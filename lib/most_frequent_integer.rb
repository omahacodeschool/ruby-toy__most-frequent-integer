# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    hsh = Hash.new(0) #creates a new, empty hash
    arr.each { |i| hsh[i] += 1 }
    mode_arr = [] # an empty Array to stash key(s) with the highest frequency
    hsh.each { |k,v| mode_arr << k if v == hsh.values.max }
    
    if mode_arr.length > 1
        return nil
    else
        return mode_arr
    end
    
end

arr = [1, 2, 3, 4, 4]
find_most_frequent_integer(arr)