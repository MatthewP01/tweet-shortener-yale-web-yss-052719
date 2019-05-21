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
  tweet_string = tweet.split(" ")
  compare_words = dictionary.keys
  tweet_string.map do |shorten|
    if compare_words.include?(shorten)

end
