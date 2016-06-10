# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    # initalize count to 0 and create an empty array
    c = 0
    l = []
    # For each element in arr, count how many times it appears, if it is greater
    # than c, change c to that value, empty l and then add that element to l.
    # if the count is less than c, do nothing. If the count is equal to c, check 
    # to see if that element is already in l. If is in l do nothing, if it isnt in l, add it to l.
    arr.each do |i|
	    if arr.count(i) > c
		    c = arr.count(i)
		    l = []
		    l.push(i)
	    elsif arr.count(i) == c
		    if l.include?(i) == false
			    l.push(i)
			end
	    end
    end	
    # if array l has more than one element, then there isn't a most frequent integer
    if l.length > 1
	    return nil
    else 
	    return l[0]
    end
end
