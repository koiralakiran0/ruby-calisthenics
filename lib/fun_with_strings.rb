module FunWithStrings
  # Part A: Palindromes
  def palindrome?
    word = self.downcase.scan(/\w/)
    word == word.reverse
  end
  
  # Part B: Word count
  def count_words
    string = self.squish.downcase.gsub(/[^a-z0-9\s]/i, '')
    string = string.split(" ")
    words =  Hash.new(0)
    string.each { |x|
      words[x] +=1;
    }
    return words
  end
  
  # Part C: Anagrams 
  def anagram_groups
    ret_arr = []
    string = self.split(" ")
    
    until string.empty?
      word = string.first
      tempArray = [word]
      string.each { |check|
        if (word.downcase.split('').sort.join == check.downcase.split('').sort.join) && (word !=  check)
          tempArray.push(check)
          string.delete(check)
        end
      }
      string.delete(word)
      ret_arr.push(tempArray)
    end
    # string = self.split(" ")
    # num = 0;
    # string.each { |x|
    #   tempArray = Array.new(0)
    #   string.each {|y|
    #     if ((y.downcase.split('').sort == x.downcase.split('').sort) && (x != y))
    #       tempArray.push(y)
    #     end
    #   }
    #   grandArray.push(tempArray)
    # }
    ret_arr
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
