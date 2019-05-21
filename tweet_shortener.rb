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
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |sub|
    tweet =  word_substituter(sub)
    puts "#{tweet}"
  end

end
