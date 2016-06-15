# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  
    #1. Create test array.
    abs_arr = [1, 1, -1, -1, 2, 3, 4]
    
    #2. Create hash variable with default 0 value.
    hashld = Hash.new 0
    
    #3. Loop through each array element, count them, and insert the final key/value combo into the hashld hash.
        abs_arr.each do |ele|
    	    hashld[ele] += 1
        end
    
    #4. Hold max count in variable.
    maxd = hashld.values.max
    
    #5. Create new hash containing keys with more than 1 count.
    prearr = (hashld.select {|key,value| value == maxd})
    
    #6. Return array if size == 1, else return nil. 
    if prearr.size == 1
        prearr.keys
    else 
        nil
    end
  
end
