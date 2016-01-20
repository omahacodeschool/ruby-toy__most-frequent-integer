# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
occurances = Hash.new(0)
arr.each { |int| occurances[int] +=1}
#puts occurances
occur_most = occurances.values.max
final = occurances.select { |k, v| v == occur_most }.keys
#puts final
if final.length == 1
      return final
   else
      return nil
end
end
