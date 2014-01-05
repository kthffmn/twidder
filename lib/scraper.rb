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