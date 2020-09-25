require('rspec')
require('anagrams')

describe('Anagram') do
  it('initializes values for each word passed as arguments') do
    new_test = Anagram.new('hello', 'world')
    expect(new_test.word1).to(eq('hello'))
  end
  it('outputs true if the two words are anagrams') do
    new_test = Anagram.new('ruby', 'bury')
    expect(new_test.get_matches).to(eq([true,true,true,true]))
  end
  it('outputs false if the two words are not anagrams') do
    new_test = Anagram.new('bird', 'bury')
    expect(new_test.get_matches).to(eq([true,false,true,false]))
  end
  it('accounts for inputs with different casing') do
    new_test = Anagram.new('RubY', 'BUry')
    expect(new_test.get_matches).to(eq([true,true,true,true]))
  end
  it('create method which checks if word(s) contain at least one vowel') do
    new_test = Anagram.new('fgjk', 'BUry')
    expect(new_test.word?).to(eq(false))
  end
  it('create method to check if the user inputs are anagrams by checking the bool array') do
    new_test = Anagram.new('ruby', 'bury')
    expect(new_test.anagram_antigram).to(eq('The words ruby and bury are anagrams!'))
  end
  it('add ability for anagram_antigram method to check for antigrams') do
    new_test = Anagram.new('live', 'bury')
    expect(new_test.anagram_antigram).to(eq('The words live and bury have no matches and are antigrams!'))
  end
  it('add ability for anagram_antigram method to determine if input is neither anagrams or antigrams') do
    new_test = Anagram.new('ball', 'bury')
    expect(new_test.anagram_antigram).to(eq('The words ball and bury are not anagrams or antigrams'))
  end
end