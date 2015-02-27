get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/find_anagram' do
  @word_anagram = Word.anagrams_for(params[:user_input])
  puts @word_anagram

  erb :index
end

get '/*' do
  word = "#{request.path}"[1..-1]
  anagram_list = Word.anagrams_for(word)

  erb :general, :locals => { :@word_anagram => anagram_list, :original_word => word}
end
