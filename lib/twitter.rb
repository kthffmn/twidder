class Twitter
	attr_accessor :tweets, :urls, :tweeters, :my_url, :my_tweet, :my_error

	def initialize
		@urls = []
		while @urls.length == 0
			@tweeters = []
			new_mistake = Mistake.new
			@my_error = new_mistake.error
			my_scraper = Scraper.new(new_mistake.get_url)
			@tweets = my_scraper.get_tweets
			@urls = my_scraper.get_urls
		end
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
    	persons_url = person.url
    	@my_url = "http://www.twitter.com" + persons_url
    	@my_tweet = person.tweet
    end

end
