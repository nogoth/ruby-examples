require 'simple-rss'
require 'open-uri'

rss = SimpleRSS.parse open('http://twitter.com/statuses/user_timeline/15827231.rss')

puts rss.channel.title
rss.items.each do |i|
   (user,say) = i.title.split(":") 
	 puts say + " -#{user}"
end
