# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  mean = Hash.new(0)
  max = 0
	maxkey = 0
	is_duplicate = false
	if arr.empty? 
		return nil
	end
	arr.each do |arr| mean[arr] += 1 
	end
	mean.each do |key, value|
    if value >= max
      if value > max
				max = value
				maxkey = key
				is_duplicate = false
			else 
				is_duplicate = true
			end
		end
	end
	if is_duplicate 
		return nil
	else 	
		return maxkey
	end
end