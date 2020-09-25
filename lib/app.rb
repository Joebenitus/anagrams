require('./anagrams')

loop do
  puts "\nEnter two words or phrases to find out if they are anagrams/antigrams"
  puts "Word 1:"
  word1 = gets.chomp
  puts "Word 2:"
  word2 = gets.chomp
  anagram = Anagram.new(word1, word2)
  puts anagram.palindrome?()
  puts anagram.anagram_antigram()
  puts "Would you like to enter more words? (yes/no)"
  play_again = gets.chomp
  if play_again === 'no'
    break
  end
end