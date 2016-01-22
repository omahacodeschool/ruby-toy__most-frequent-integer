# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    num_val = Hash.new(0)                   #This is the new empty hash
    arr.each {|arr| num_val[arr] += 1}      #Here we iterate over the array, puting it into a hash with the key being the number and the value how many
    num_val.key(num_val.values.max)         #Here we iterate over the hash and find the key with the highest value
end
find_most_frequent_integer(arr)