# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    out = []
    count = Hash.new
    for i in 0..arr.length - 1
        if !count.key?(arr[i]) 
            count.store(arr[i], 1)
        else
            count[arr[i]] += 1
        end
    end
    for j in 0..count.keys.length - 1
        if count[count.keys[j]] == count.values.max
            out << count.keys[j]
        end
    end
    if out.length > 1
        p nil
    else
        p out[0]
    end
end