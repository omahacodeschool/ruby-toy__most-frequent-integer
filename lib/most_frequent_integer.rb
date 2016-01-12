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

def find_most_repeated_number(nums)
  h = create_collection_of_numbers(nums)
  arr = h.max_by{|k,v| v}
  return arr.first
end