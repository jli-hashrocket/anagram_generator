require 'rspec'
require_relative 'anagram_generator'

describe AnagramGenerator do
  let(:anagram) {AnagramGenerator.new("dog")}
    it 'splits the word into an array of letters' do
      expect(anagram.split_word).to eql(['d','o','g'])
    end
    it 'it creates all possible combinations of the word and puts it in array' do
      expect(anagram.permutate).to eql([["d", "o", "g"],
                                         ["d", "g", "o"],
                                         ["o", "d", "g"],
                                         ["o", "g", "d"],
                                         ["g", "d", "o"],
                                         ["g", "o", "d"]])
    end
    it 'combines the letters of each array into a word' do
      expect(anagram.combine_letters).to eql(["dog", "dgo", "odg", "ogd", "gdo", "god"])
    end
end
