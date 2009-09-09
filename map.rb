Class Symbol
  def to_proc()
    Proc.new { |obj, *args| obj.send(self, *args)}
  end
end

#lets you use z = a.map( &:upcase ) to upcase all the items

require 'to_lang'
q = [ 1, 2, 3]
puts q.map(&:to_en)
