list = ARGV[0..-2]
iterations = ARGV[-1].to_i


class Array
	def rotate
		self << self.shift
	end
	def shuffle
		self.sort{rand(2)}
	end
end

stil = list.sort{rand(2)}

iterations.times do
	puts "|#|Pair|Schedule|"

	stil.rotate
	list.zip(stil).each_with_index {|a,i| puts "|" + i.to_s + "|" + a.join(" | ") + " | |\n"}
  puts "\n"
end
