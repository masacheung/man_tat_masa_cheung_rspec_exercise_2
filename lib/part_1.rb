def partition(array, num)
    ans = []
    sub_1 = []
    sub_2 = []

    array.each do |ele|
        if ele >= num
            sub_2 << ele
        else
            sub_1 << ele
        end
    end

    ans << sub_1 << sub_2

end

def merge(hash_1, hash_2)
    ans = Hash.new

    ans = hash_1.merge(hash_2)

end

def censor(sentence, array)
    vowels = "aeiou"

    words = sentence.split(" ")
    ans = []

    words.each do |word|
      string = ""
      if array.include?(word.downcase)
        word.each_char.with_index do |char, i|
          if vowels.include?(char.downcase)
            string += '*'
          else
            string += char
          end
        end
        ans << string
      else
        ans << word
      end
    end

    ans.join(" ")

end

def power_of_two?(num)

    if num == 1
        return true
    end

    (1..num).each do |ele|
        if 2.pow(ele) == num
            return true
        end
    end

    false
end

