# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  n = Hash.new(0)
  return_arr = []
  freq = 0
  
  arr.each do |element|
    n[element] += 1
  end
  n.each_pair { |k,v| 
    if v > freq
      freq = v
      return_arr.clear << k
    elsif v == freq
      return_arr = nil 
    end
  }
  return return_arr
end
  