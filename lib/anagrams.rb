class Anagram
  attr_reader(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagrams?
    if @word1.length != @word2.length
      false
    else
      word_array = @word1.split('')
      bool_array = []
      word_array.each do |letter|
        bool_array.push(@word2.include? letter)
      end
      bool_array.include?(false) ? false : true
    end
  end
end