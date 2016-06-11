# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  #use a Hash to keep track of the number of duplicates
  new_hash = Hash.new(0)
  #iterate through each element in the array
  arr.each do |element|
      #add all elements to the new_hash and add one to the key's value if there's a duplicate
      new_hash[element] += 1
  end
  #make sure that the Array passed in contained something
  if new_hash.empty?
      return nil
  end
  #create empty array to add the key(s) with the "highest value" value(s)
  comparison_array = []
  #iterate through each key and value in new_hash
  new_hash.each do |x, y|
      #compare each value to the "max" value of the hash
      if y == new_hash.values.max
          #add any keys that match the "highest value" value in the 
          #hash to the new array
          comparison_array.push(x)
      end
  end
  #check if more than one key was added to the new array
  if comparison_array.count > 1
      #if the array contains more than one element then there was more than one
      #repeated integer
      return nil
  else
      #if the array contains only one element then that element is the most
      #frequent integer
      return comparison_array[0]
  end
end
