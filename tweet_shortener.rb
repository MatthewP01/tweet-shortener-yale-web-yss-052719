def dictionary
  tweet_dict = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
  compare_words = dictionary.keys
  tweet.split(" ").map do |shorten|
    if compare_words.include?(shorten)
      shorten = dictionary[shorten]
    else
      shorten
    end
  end
  tweet_string.join(" ")
end
  tweet.split(" ").map do |word|
       if dictionary.keys.include?(word.downcase)
         word = dictionary[word.downcase]
       else
         word
     end
   end.join(" ")
  end
