#bot streaming tweet with key word tea and coffee

require 'twitter'
require 'dotenv'

Dotenv.load

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_API_KEY"]
    config.consumer_secret     = ENV["TWITTER_API_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end


p client


#client.search("to:ymagoo photography", result_type: "recent").take(10).collect do |tweet|
#    "#{tweet.user.screen_name}: #{tweet.text}"
#  end
#
#client.user_timeline(["@rianasoa"]).collect do |tweet| 
#    "#{tweet.id}  "
#    client.favorite(tweet.id)
#    client.update("#{tweet.id}salut lesy Rianasoa... manandrana bots twitter lesy dia ny compten-i toi no atao test a ;)")
#end


client.search('#weddingphotographer').take(3).each do |tweet|
  client.update("@#{tweet.user} Hey I love wedding photography too, what are your favorite blogs? :)")
end

p client.user_timeline