# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
 arr = arr.sort
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