# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
	# Create a new hash for the frequency distribution.
    freq = Hash.new(0)
    
    # For each integer in the array, add to the frequency distribution.
    arr.each do |i|
        freq[i] += 1
    end
    
    # Sort the distribution by the count, descending.
    rank = freq.sort_by{|i, count| -count}
    
    # Do we have a tie or were there no values in the array?
    if rank.length == 0 || rank[0][1] == rank[1][1]
    	return nil
    	
    # If not, return the most frequent integer.
    else
    	return rank[0][0]
    end
end
