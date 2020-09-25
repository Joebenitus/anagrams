class Anagram
  attr_reader(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @word1_parsed = word1.downcase.split(/[, ]+/i).join('')
    @word2_parsed = word2.downcase.split(/[, ]+/i).join('')
  end

  def get_matches
    if @word1_parsed.length != @word2_parsed.length
      false
    else
      word_array = @word1_parsed.split('')
      bool_array = []
      word_array.each do |letter|
        bool_array.push(@word2_parsed.include? letter)
      end
      bool_array
    end
  end

  def word?
    if (@word1.match(/[aeiouy]/i)) && (@word2.match(/[aeiouy]/i))
      true
    else
      false
    end
  end

  def palindrome?
    words_combined = (@word1_parsed + @word2_parsed).split('')
    (words_combined.length/2).times() do |letter|
      if words_combined[letter] != words_combined[(letter+1)*(-1)]
        false
      end
    end
    "#{@word1} #{@word2} is a palindrome!"
  end

  def anagram_antigram
    common_letters = @word1_parsed.scan(/[#{@word2_parsed}]+/)
    if !self.get_matches | (get_matches.include?(false) & get_matches.include?(true))
      common_letters = common_letters[0].split('').join(', ')
      "The words #{@word1} and #{@word2} are not anagrams but they shared the following letter(s): '#{common_letters}'"
    elsif !self.get_matches.include?(false)
      "The words #{@word1} and #{@word2} are anagrams!"
    elsif !self.get_matches.include?(true)
      "The words #{@word1} and #{@word2} have no matches and are antigrams!"
    end
  end
end