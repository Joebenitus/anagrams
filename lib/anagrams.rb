class Anagram
  attr_reader(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagrams?
    if @word1.length != @word2.length
      false
    end
  end
end