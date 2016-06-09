# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    most = []
    freq = Hash.new(0)
        arr.each do |i|
           freq[i] += 1
        end
    freq.each do |k,v|
        if v == freq.values.max
            most.push(k)
        end
    end
    if most.count > 1
        nil
    else return most[0]
    end
end
