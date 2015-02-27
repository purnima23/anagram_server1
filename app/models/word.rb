# require_relative '../../config/application'


class Word < ActiveRecord::Base
  def self.anagrams_for(word)
    p "======================#{word}=========="
    anagram = []
    word = word.downcase.split(//).sort.join
    p "====================sorted==#{word}=========="
    Word.where(word_sorted_downcase: "#{word}").each do |x|
      anagram << x.word
    end
    anagram
  end
end