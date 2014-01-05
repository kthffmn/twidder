require "./lib/twitter.rb"
require "./lib/color.rb"
Bundler.require

class EmergencyCompliments < Sinatra::Application

	get '/' do
		my_twitter = Twitter.new
		my_twitter.get_info
		
		@color = Color.new.rando
		erb :index
	end

end