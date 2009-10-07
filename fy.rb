require 'enumerator' #for each_slice

users = ARGV + ARGV
def unique?(list)
  list.each_slice(2) do |a| 
	  if a[0] == a[1]
						return false
		end
	end
	return true
end

def fy(list)

n = list.length

while (n > 1) do
  n = n - 1
  k = rand(n+1)
  tmp = list[k]
  list[k] = list[n]
  list[n] = tmp
end
 if ! unique?(list)
				 list= fy(list)
 end
 return list
end

fy(users).each_slice(2){|a| puts a.join(" - ")} 
