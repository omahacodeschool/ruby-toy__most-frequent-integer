# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    new_array=[]
    final_array=[]
    array_to_use=arr.uniq
      array_to_use.each do |x| 
      new_array << [arr.count(x), x]
      final_array=new_array.sort
 end
 count_array=[]
 final_array.each do |x|
     count_array << x.reverse
  end
 just_count_array=[]
 count_array.each do |x|
     just_count_array << x.pop
  end
 z=just_count_array[-1]
 res=just_count_array[0..-2].include?(z)
  if res==false
     return final_array[-1][1]
  end
end
