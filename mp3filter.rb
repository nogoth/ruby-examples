require "mp3info"

Artist = ARGV[0]
# read and display infos & tags
STDIN.readlines.each do |line|
  Mp3Info.open(line[0..-2]) do |mp3info|
    if mp3info.tag.artist
			puts line if mp3info.tag.artist.match(Artist)
		end
  end
end

