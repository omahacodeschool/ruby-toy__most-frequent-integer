# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    
    
    topvar = nil
    newcounter = 0
    topcounter = 0
    x = 0
    arrsort = arr.sort
    
    
    while x < arrsort.length
    
        if arrsort[x] == arrsort[x + 1]
            
            newcounter += 1
            
            
                if newcounter == topcounter
                    topvar = nil
                    
                elsif newcounter > topcounter
                    topvar = arrsort[x]
                    topcounter = newcounter
                end
        else
            newcounter = 0
        end
        x +=1
    end
    return topvar
end
