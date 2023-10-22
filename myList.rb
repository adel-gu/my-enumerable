require_relative "myEnumerable"
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args.flatten
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1,2,3,4)
puts list.all? { |e| e >= 1 }