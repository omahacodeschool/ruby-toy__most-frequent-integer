# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    h = Hash.new
    arr.each do |i|
        x = arr.count(i)
        h["#{i}"] = "#{x}"
    end
    max = h.values.max
    output_hash = Hash[h.select { |k, v| v == max}]
    k = output_hash.keys.uniq
    if k.count > 1
        return nil
    elsif k.empty? 
        return nil
    else
        return k.join('').to_i
    end
 end
