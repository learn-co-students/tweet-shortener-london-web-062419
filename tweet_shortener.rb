# Write your code here.

def dictionary
    {
        "Hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        'you' => "u",
        "at" => "@",
        "and" => "&"
    }
end



# def word_substituter(str)
#     dictionary.each { |key, value| str = str.gsub(key, value) }

#     str
# end
# Why the above method influences every character i.e. 
# expected:  best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"
# got: bst @ everything, u know wh@ I mean? Tweeting is super fun u guys!!!!"

def word_substituter(tweet)
    tweet.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
tweets.map do |tweet|
    puts word_substituter(tweet)
end
end 


def selective_tweet_shortener(tweet_one)
    if tweet_one.length > 140 
        word_substituter(tweet_one)
    else 
        tweet_one
    end
end

 def shortened_tweet_truncator(tweet_two)
    if tweet_two.length > 140 
        selective_tweet_shortener(tweet_two)
        if tweet_two.length > 140
            tweet_two[0...140]
        end 
    else 
        tweet_two
    end 
end  