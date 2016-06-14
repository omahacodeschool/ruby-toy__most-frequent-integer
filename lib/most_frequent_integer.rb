# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  # put your code here
  
#Algorothmic Process

#Create a new array that each integer (eliminate the repeats)
#Create a hash that pairs each element of the new array with how manys times it appears in the original array
#Determine the key-value pair with the larget value
#If the value is unique, return its key
#Else return nil

new_hash = {}
arr.each do |x|
    new_hash[x] = 0 if new_hash[x].nil?
    new_hash[x] = new_hash[x] + 1
end
new_hash2 = {}
new_hash2 = new_hash.select{|k,v| v == new_hash.values.max}

if new_hash2.length == 1
    return new_hash2.key(2)
else
    return nil
end
end
