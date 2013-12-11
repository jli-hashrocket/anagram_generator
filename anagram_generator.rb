require 'pry'

class AnagramGenerator
  def initialize(word)
    @word = word
  end

  def split_word
    @word.split('')
  end

  def permutate
    split_word.permutation.to_a
  end

  def combine_letters
    permutate.map {|combo| combo.join}    # anagram = ['dgo','gdo','god','odg','ogd']
  end
end


anagram = AnagramGenerator.new('dog')
puts anagram.combine_letters
