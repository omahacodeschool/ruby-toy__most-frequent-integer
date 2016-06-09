# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr) #I think I want to turn this array into a hash with the integer as the key and the number of said integer as the value for ex: {1=>3, 2=>1, 3=>2, 4=>1}. This should give me the ability to call on the key(s) with the highest value.
	if arr.length == 0 #if the given array is empty, the loop will stop right here
		return nil
	else #if the array is not empty it will continue with the follow block
		h = Hash.new(0) #this is my new empty hash
		arr.each{ |i| h[i] += 1 } #this each loop will go through the original array, and each time a specific integer occurs, it will increase the value of that key in the hash
		maxval = h.max_by { |x, y| y }[1] #max_by will find the highest value based on the block, here that is just the value of the key/value pair. It returns the pair as an array like this [key, value]. The number in the bracket specifies the key or the value in the returned array. this variable represents the highest value in the hash
		maxkey = h.max_by { |x, y| y }[0] #this variable represents the key with the highest value.
		r = h.select{ |v, w| w==maxval } #select will create a new hash with all pairs whose value equals maxval
		if r.length == 1 #if there is one most-frequent int then this will return that int
			return maxkey
		else #if there is more than one, we will get a 'nil'
			return nil
		end
	end
end