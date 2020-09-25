require('rspec')
require('anagrams')

describe('Anagram') do
  it('initializes values for each word passed as arguments') do
    new_test = Anagram.new('hello', 'world')
    expect(new_test.word1).to(eq('hello'))
  end
  it('outputs true if the two words are anagrams') do
    new_test = Anagram.new('ruby', 'bury')
    expect(new_test.anagrams?).to(eq(true))
  end
  it('outputs false if the two words are not anagrams') do
    new_test = Anagram.new('bird', 'bury')
    expect(new_test.anagrams?).to(eq(false))
  end
  it('accounts for inputs with different casing') do
    new_test = Anagram.new('RubY', 'BUry')
    expect(new_test.anagrams?).to(eq(true))
  end
end