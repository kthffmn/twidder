require "./color.rb"
require "./mistakes.rb"
require "./scraper.rb"
require "./tweeter.rb"

class 
	attr_accessor :tweets, :urls, :tweeters, :my_url, :my_tweet

	def initialize
		new_mistake = Mistake.new
		my_scarper = Scraper.new(new_mistake.get_url)
		@tweets = my_scarper.get_tweets
		@urls = my_scarper.get_urls
		@tweeters = []
	end

	def make_directory
		num_t = tweets.length
		num_u = urls.length
		if num_u >= num_t
			num_t.times do |i|
				tweeters << Tweeter.new(urls[i], tweets[i])
			end
		else
			num_u.times do |i|
				tweeters << Tweeter.new(urls[i], tweets[i])
			end
		end
		tweeters
    end

    def select_tweeter
    	rand_num = rand(0...make_directory.length)
    	tweeters[rand_num]
    end

    def get_info
    	person = select_tweeter
    	perons_url = person.url
    	@my_url = "www.twitter.com" + perons_url
    	@my_tweet = person.tweet
    end

end