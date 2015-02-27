

words = File.read('app/dictionary/words')

words.each_line do |word|
  word.delete!("\n")
  sorted_downcase = word.downcase.split(//).sort.join
  Word.create(word: word, word_sorted_downcase: sorted_downcase)
end