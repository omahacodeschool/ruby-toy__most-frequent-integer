# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  # put your code here
end

# Here's what I have so far...
# Example Array = [1, 1, 2, 2, 3, 4, 5]

arr = [1, 1, 2, 2, 3, 4, 5]
arr.group_by { |i| i } #=> {1=>[1, 1], 2=>[2, 2], 3=>[3], 4=>[4], 5=>[5]}

#or

arr = [1, 1, 2, 2, 3, 4, 5]
hsh = arr.group_by { |i| i } #=> {1=>[1, 1], 2=>[2, 2], 3=>[3], 4=>[4], 5=>[5]}

# I can get the Array into a Hash, but am not able to return the key with the most values or nil.

# -------------------------------------------------------

arr = [1, 1, 2, 2, 3, 3, 5]
arr.max_by { |i| arr.count(i) } #=> 1

#or

arr = [1, 1, 2, 2, 3, 4, 5]
arr.each.max_by { |i| arr.count(i) } #=> 1

# Not what we want
# For this example returns =>1 instead of =>nil.  
# Will also return =>1 for an array = [1, 2, 3, 4, 5]

# -----------------------------------------------------

arr = [1, 1, 2, 2, 3, 4, 5]
arr.uniq.select { |i| arr.count(i) > 1 } #=> [1, 2]

#or

arr = [1, 1, 2, 2, 3, 4, 5]
brr = arr.uniq #=> [1, 2, 3, 4, 5]
brr.select { |i| arr.count(i) > 1 } #=> [1, 2]

# Again, not what we want.

# ----------------------------------------------------

# We know this...

arr = [1, 1, 2, 2, 3, 4, 5]
arr.count(1) #=> 2
arr.count(2) #=> 2
arr.count(3) #=> 1
arr.count(4) #=> 1
arr.count(5) #=> 1

# I am not yet able to get this to return the most frequent integer