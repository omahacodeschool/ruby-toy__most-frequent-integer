# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    array = arr.sort
    unique_integers = array.uniq
    if array === unique_integers
    elsif arr.length < 2
        mode = []
    else
        integer_frequency = []
        top_two = []
        unique_integers.each do |i|
            array.count(i)
            integer_frequency << array.count(i)
        end
        top_two = integer_frequency.max(2)
        if top_two[0] === top_two[1]
            mode = []
        else
            a = []
            a = integer_frequency.index { |i| i === integer_frequency.max }
            mode = unique_integers[a]  
        end
    end
    return mode
end
