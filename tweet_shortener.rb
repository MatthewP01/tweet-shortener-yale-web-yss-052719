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
    if compare_words.include?(shorten.downcase)
      # This too me SOOOOOOO long to realise I needed to change to lowercase
      shorten = dictionary[shorten.downcase]
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

def selective_tweet_shortener(tweet_small)
#   tweet_small.split(" ").map do |short|
#     if short.length > 140
#       return word_substituter(short)
#     elsif short.length <= 140
#       return short
#     end
#   end.join(" ")
# end
  if tweet_small.size > 140
    word_substituter(tweet_small)
  else
    tweet_small
  end
end

def shortened_tweet_truncator(tweet_trunc)
  if tweet_trunc.length >= 140
    tweet_trunc[0..136] + "..."
  else
    tweet_trunc
  end
end
