require "./lib/twitter.rb"
require "./lib/mistakes.rb"
require "./lib/scraper.rb"
require "./lib/tweeter.rb"
require "bundler"
Bundler.require

class App < Sinatra::Application

	get '/' do
		my_twitter = Twitter.new
		@error = my_twitter.my_error
		my_twitter.get_info
		@this_url = my_twitter.my_url
		@this_tweet = my_twitter.my_tweet
		erb :index
	end

end