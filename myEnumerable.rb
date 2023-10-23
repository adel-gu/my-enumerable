module MyEnumerable
  def all?
    each { |n| return false unless yield n }
    true
  end

  def any?
    each { |n| return true if yield n }
    false
  end

  def filter
    result = []
    each { |n| result.append(element) if yield n }
    result
  end
end