Class Symbol
  def to_proc()
    Proc.new { |obj, *args| obj.send(self, *args)}
  end
end

#lets you use z = a.map( &:upcase ) to upcase all the items
