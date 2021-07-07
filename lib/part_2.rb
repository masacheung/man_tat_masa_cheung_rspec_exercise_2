def palindrome?(string)
    if string.length == 1
        return true
    elsif string.length == 2
        if string[0] == string[-1]
            return true
        else
            return false
        end
    end

    left = 0
    right = string.length - 1

    while left != right
        if string[left] != string[right]
            return false
        end
        left += 1
        right -= 1
    end

    true
end

def substrings(string)
    arr = []
    for i in (0...string.length) do 
        arr << string[i]
        group = string[i]
        for j in (i+1...string.length) do
            group += string[j]
            arr << group
        end
    end
    arr
end

def palindrome_substrings(string)
    arr = substrings(string)
    ans = []

    arr.each do |ele|
        if ele.length > 1 && palindrome?(ele)
            ans << ele
        end
    end

    ans
    
end