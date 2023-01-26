require_relative "my_enumerable"

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each_num(&block)
    @list.each(&block)
  end
end

c = MyList.new([1, 2, 4, 3, 5, 7])
c.each_num { |val| puts val }

puts c.all? do |val|
  val > 5
end

puts c.any? do |val|
  val > 5
end

puts c.filter(&:even?)
