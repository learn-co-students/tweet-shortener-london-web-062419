require 'pry'

def dictionary
    dictionary = {
      "too" => "2",
      "to" => "2",
      "two" =>"2",
      "four" => "4",
      "for" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&"
    }
    end


    def word_substituter(tweet)
       
        tweet.split.map do |word|   #split the tweet, which is a string, in to an array - map creates a duplicate array with any changes made. For each array item, we will refer to them as word.
          if dictionary.keys.include?(word.downcase) #if our dictionary key includes a word from the tweet
            word = dictionary[word.downcase] #then that word will now be equal to dictionary[key_value] i.e. it will find the key and output the value so TOO becomes 2 etc.
          else
            word #if it doesn't find the word in our dictionary, it will print as-is
          end
        end.join(" ") #this end is from the do, and after the loop as run, it will join the array elements back in to a string
      end

    
    def bulk_tweet_shortener(tweets) #take an array of tweets
        tweets.each do |tweet| #for each tweet
            puts word_substituter(tweet) #use the word substituter method on the tweet
         end
    end

    def selective_tweet_shortener(tweet) #take in a tweet
        if tweet.length > 140 #if the tweet length is more than 140 characters
             word_substituter(tweet) #then use the word_substituer method to shorten it
        else
            tweet # else just return the tweet as it is, because its not too long
        end
    end
    

    def shortened_tweet_truncator(tweet)
        if word_substituter(tweet).length > 140 #if after running the tweet shortener, the tweet length is still over 140
          word_substituter(tweet)[0..136] + '...' #only show the indexs from 0 to 136, and add '...' to the end of the tweet
        else
          tweet # if it's not too long then just return it as-is
        end
      end
