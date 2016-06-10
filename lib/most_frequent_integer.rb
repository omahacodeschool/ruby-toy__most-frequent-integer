# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
 	totals = Hash.new(0)
 	mode = []
 	arr.each do |x|
 		totals[x] += 1
 	end
	totals.each do |k,v|
 		if v == totals.values.max
 			mode.push(k)
 		end
 	end
 	if mode.count > 1
 		nil
 	else return mode[0]
 	end
end
#To find the most frequent integer, I need to count the number of times each integer in the array appears.
#I wanted to create a list of the elements that appear in the array along with the number of times they appear.
#I created a hash with a default value of 0. I then iterated over the array such that each element in the array
#is assigned to the hash as a key, and its value is incremented by one each time the key occurs in the array.
#I then iterated over the hash such that the maximum values (the maximum counted appearances) are selected and 
#their keys (the elements themselves) are pushed to a new array, 'mode'. If there is more than one most-frequent
#element, then nil is returned. Otherwise the first element of 'mode' is returned. I chose to return mode[0]
#so that it wasn't returned as an array, since the test is expecting an integer.