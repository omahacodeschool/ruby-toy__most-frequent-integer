# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  highest_value = Hash.new(0)
  store_integer = Array.new
  arr.each do |x|
      highest_value[x] += 1
    end
  highest_value.each do |key,value|
    if value == highest_value.values.max 
      store_integer.push(key)  #need to put the highest value somewhere, so an array it will have to be!  This was the hardest step for me.  I could figure out how to return the key from the above step, but that wasn't helpful since one couldn't directly compare the keys (but putting them in an array worked.)
    end
  end 
    if store_integer.length == 0 or store_integer.length >= 2  #This will return nil if there is no most frequent integer (like in the case of an empty hash), or if there are several of the most frequent integer amount
      return nil
    else
      return store_integer[0]  
    end 
    
end