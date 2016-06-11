# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    highest = nil
    count = 0
    for i in 0..arr.length-1
        if arr.count(arr[i])>count
            highest = arr[i]
            count = arr.count(arr[i])
        elsif (arr.count(arr[i])==count)&&arr[i]!=highest
            highest=nil
        end
    end
    return highest
end
