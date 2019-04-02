# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) where n represents the length of my_sentence.
# Space complexity: O(1), since the string array is reversed in place.

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return my_sentence
  end
  len = my_sentence.length
  j = 0
  (len / 2).times do
    low = my_sentence[0 + j]
    high = my_sentence[len - 1 - j]
    x = low
    my_sentence[0 + j] = high
    my_sentence[len - 1 - j] = x
    j += 1
  end
  i = 0
  low = nil
  high = nil
  len.times do
    if my_sentence[i] != " "
      if my_sentence[i - 1] == " " || i == 0
        low = i
      elsif my_sentence[i + 1] == " " || i + 1 == len
        high = i
      end
      if low != nil && high != nil
        j = 0
        len2 = high - low + 1
        (len2 / 2).times do
          l = my_sentence[low + j]
          h = my_sentence[high - j]
          x = l
          my_sentence[low + j] = h
          my_sentence[high - j] = x
          j += 1
        end
        high = nil
        low = nil
      end
    end
    i += 1
  end
  return my_sentence
end
