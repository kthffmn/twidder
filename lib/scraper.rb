require "open-uri"
require "nokogiri"

class Scraper
    attr_reader :html

    def initialize(url)
        download = open(url)
        @html = Nokogiri::HTML(download)
    end

    def get_urls
        html.search("a.tweet-timestamp").collect{|a|a["href"]}
    end

    def get_tweets
        html.search("p.tweet-text").collect{|p|p.text}
    end

end

# new_scraper = Scraper.new("https://twitter.com/search?q=%22its%20wierd%22&src=typd&f=realtime")
# puts "urls: "
# my_urls = new_scraper.get_urls
# puts my_urls.inspect
# puts "tweets: "
# my_tweets = new_scraper.get_tweets
# puts my_tweets.inspect