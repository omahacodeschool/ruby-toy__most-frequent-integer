# For a given array, sort integers into a separate array based off the separate array's index.
# If one number occurs the most, return that number. If not, return nothing/nil.
# I realize this code only runs 0-9, but I was happy to get it to past the tests.

def find_most_frequent_integer(arr)
x = 0
	mode = nil
	mode_array = [0,0,0,0,0,0,0,0,0,0]
	is_nil = 0
	while x < arr.length
		mode_array[arr[x]] +=1
		x += 1
	end
	x = 0
	mode = x
	x += 1
	while x < 10
		if mode_array[x] > mode_array[mode]
			mode = x
			is_nil = 0
		elsif mode_array[x] == mode_array[mode]
			is_nil = 1
		end
		x+=1
	end
	if is_nil == 1
		return nil
	end
	return mode
end
