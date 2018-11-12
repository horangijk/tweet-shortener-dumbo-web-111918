phrase = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

require "pry"

def dictionary
  convert = {
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

    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end

# def selective_tweet_shortener(tweet)
#   tweet.split(" ").map do |phrase|
#     if tweet.split(' ').length > 140
#       word_substituter(phrase)
#     elsif phrase.length <= 140
#       phrase
#     end
#   end
# end

def selective_tweet_shortener(tweet)
  if tweet.split('').length > 140
    word_substituter(tweet)
  elsif tweet.split('').length <= 140
    tweet
  end
  
end

def shortened_tweet_truncator(tweet)
  tweet[0..136]
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    elsif phrase.length <= 140
      phrase
    end
  end.join(" ")
end
