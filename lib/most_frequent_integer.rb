# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    collect = Hash.new 0
   
    arr.each do |int|
       collect[int] += 1
    end
    
    if collect.select {|k,v| v == collect.values.max}.count > 1
        nil
    else
        collect.key(collect.values.max)
    end
end
