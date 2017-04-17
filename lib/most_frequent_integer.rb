# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    num_val = Hash.new(0)                                       #This is the new empty hash
    arr.each {|arr| num_val[arr] += 1}                          #Here we iterate over the array, puting it into a hash with the key being the number and the value how many
    x = num_val.select { |k,v| v == num_val.values.max }.keys   #Here we iterate over the hash and find the key with the highest value and assign a variable
    if x.length == 1                                            #Here if more than one key comes back (not a single most value) it will return nil, if not
        puts x                                                  #it will return the single most frequent integer
    else
       puts nil
    end
end
find_most_frequent_integer(1,1,2,2,2,3,3,3,3,3,3)