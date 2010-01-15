require "mp3info"

# read and display infos & tags
STDIN.readlines.each do |line|
 begin
  Mp3Info.open(line[0..-2]) do |mp3info|
    if mp3info.tag
						output= "#{mp3info.tag.artist} - #{mp3info.tag.title}"
						output = output.length > 6 ? output : line
						puts output
		end
  end
 rescue
   #do nothing of value
 end
end

