require "mp3info"

Artist = Regexp.new(ARGV[0]||"Coulton", 'i')

# read and display infos & tags
STDIN.readlines.each do |line|
 begin

  Mp3Info.open(line[0..-2]) do |mp3info|
    if mp3info.tag#.artist
     if mp3info.tag.to_s.match(Artist)
	puts line
     end
    end
  end

 rescue
   #do nothing of value
 end
end

