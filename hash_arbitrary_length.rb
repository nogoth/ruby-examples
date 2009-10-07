#from http://blog.inquirylabs.com/2006/09/20/ruby-hashes-of-arbitrary-depth/
class Hash
  def self.arbitrary_depth
	    Hash.new(&(p=lambda{|h,k| h[k] = Hash.new(&p)}))
  end
end

hash = Hash.arbitrary_depth
