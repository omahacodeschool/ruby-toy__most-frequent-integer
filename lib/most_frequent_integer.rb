# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)

sortarr = arr.sort
indexarr = Array.new
n = 0

if sortarr.empty?
    return nil
else
    i = sortarr[0]
end

while n < sortarr.length && i <= sortarr.last

    indexarr[n] = sortarr.each_index.select{|x| sortarr[x] == i} 
    i = i + 1
    n = n + 1
    
end

m = 0
p = 0
q = p + 1

while m < indexarr.size && q < indexarr.size
    if p == q
        q = q + 1
    else
        
        if indexarr[p].size > indexarr[q].size
            q = q + 1
            m = m + 1
        else
            
            if indexarr[p].size == indexarr[q].size
                return nil
            else
                
                p = q
                q = 0
                m = m + 1
            
            end
        end
    end
end

return indexarr[p][1]
        
end