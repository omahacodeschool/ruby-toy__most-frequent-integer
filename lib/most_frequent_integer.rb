# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

#def find_most_frequent_integer(arr)
#    num ={
#  num = arr.max_by{|k,v| v}
#  return num.first
#end

def create_collection_of_numbers(nums)
  h={}
  nums.each do |n|
    if h.has_key?(n) == false
      h[n]=1
    elsif h.has_key?(n) == true
      h[n]= h[n] +1
    end
  end
  return h
end

def find_most_frequent_integer(nums)
  h = create_collection_of_numbers(nums)
  #arr = []
  max = h.values.max
  Hash[h.select { |k, v| v == max}]
  if h.length == 1
    return h.keys
  elsif h.length != 1
    return nil
  end
end


#Figure out what the highest frequency in that hash is.
#Figure out if more than one element in the hash has that frequency. Because it more than one does, then there's a tie and you should return nil.
#If only one element in the hash has that frequency, find it and return it.