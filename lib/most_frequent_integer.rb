# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    h = Hash.new
    arr.each do |i|
        x = arr.count(i)
        h["#{i}"] = "#{x}"
    end
    return h.max_by{|k,v| v}[0] ##key--integer; value--quantity
end