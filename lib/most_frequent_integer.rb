# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  #use a Hash to keep track of the number of duplicates
  new_hash = Hash.new(0)
  #iterate through each element in the array
  arr.each do |idx|
      #add all elements to the new_hash and add one to the key's value if there's a duplicate
      new_hash[idx] += 1
  end
  #make sure that the Array passed in contained something
  if new_hash.empty?
      return nil
  end
  #----------------------------------------------------------------
  #Do more iteration to check if one value is greater than the rest??? 
  #----------------------------------------------------------------
  #iterate through each key and value in new_hash
  new_hash.each do |x, y|
      #if the value is greater than the key then that key had duplicates in the original Array
      if y > x
          #return the value that appeared more than once
          return x
      else
          return nil
      end
  end
end
