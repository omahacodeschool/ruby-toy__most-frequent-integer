# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    #1. Create hash variable with default 0 value.
    hashld = Hash.new 0
    
    #2. Loop through each array element, count them, and insert the final key/value combo into the hashld hash.
        arr.each do |ele|
    	    hashld[ele] += 1
        end
    
    #3. Hold max count in variable.
    maxd = hashld.values.max
    
    #4. Create new hash containing keys with more than 1 count.
    fnlhsh = (hashld.select {|key,value| value == maxd})
    
    #5. Return array if size == 1, else return nil. 
    if fnlhsh.size == 1
        return fnlhsh.keys
    else 
        return nil
    end
end
