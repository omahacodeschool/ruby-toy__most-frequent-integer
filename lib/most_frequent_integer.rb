# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    a = arr #This sets the variable a to whatever array is passed as an argument
    counts = Hash.new(0) #This creates an empty hash called "counts"
    a.each {|item| counts[item] += 1} #This cycles through "a" and counts each 
                                      #each occurrence of an item in the array    
    x = counts.values.sort #This sorts the values of the count we just performed.
                           #This means that the highest value(s) will be at the end 
                           #of this particular array.
    y = x.pop #Since we're looking for the most frequent integer, the highest value
              #is what we're looking for.  So, this pops that highest value out of 
              #the array in question.
    if x.include?(y) == true #We need to make sure that it is in fact the highest
                             #value and not tied for first.  To do this, we search 
                             #what's left of the array after we've popped out what
                             #we suppose to be the highest value for that highest
                             #value.  If there is no match, it was the highest value.
                             #If there is a match, it was not and returns nil.
        nil
    else
        counts.key(y) #Assuming it passes the previous test, we need the key, not the
                      #value.  As such, we take the value and do a reverse lookup for
                      #the key.  Whatever the key is with the highest count is, is 
                      #our most frequent integer.
    end
end
find_most_frequent_integer([1,2,1,1])