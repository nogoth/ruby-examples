hash = Hash.new(&(p=lambda{|h,k| h[k] = Hash.new(&p)})) #arbitrary length hash


  STDIN.readlines.each { |line| (a,b) = line.split(" - "); if hash[a][b] == 1
hash[a][b] += 1
else
				hash[a][b] = 1
				end
}
puts hash.keys.join(" ")
hash.each{|k,v| p v}

