class Anagram
  attr_reader(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def get_matches
    if @word1.length != @word2.length
      false
    else
      word_array = @word1.split('')
      bool_array = []
      word_array.each do |letter|
        bool_array.push(@word2.include? letter)
      end
      bool_array
    end
  end

  def word?
    if @word1.match(/[aeiouy]/i) & @word2.match(/[aeiouy]/i)
      true
    else
      false
    end
  end

  def anagram_antigram
    if !self.get_matches
      "The words #{@word1} and #{@word2} are not anagrams or antigrams"
    elsif !self.get_matches.include?(false)
      "The words #{@word1} and #{@word2} are anagrams!"
    elsif !self.get_matches.include?(true)
      "The words #{@word1} and #{@word2} have no matches and are antigrams!"
    end
  end
end