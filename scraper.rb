require 'nokogiri'
require 'open-uri'

url = "http://gamefaqs.com"

data = Nokogiri::HTML(open(url))

#Only first poll
#puts data.at_css(".poll").text.strip

#all polls
#puts data.css(".poll").text.strip

#polls = data.css(".poll").text.strip

#puts data.css(".poll")[1].text.strip

#top = li within .topten
top = data.css('.topten').css('li')


top.each do |g|
	puts g.text.strip

end