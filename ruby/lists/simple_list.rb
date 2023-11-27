# singly linked list

class LinkedList
  def initialize(value, next_list = nil)
    @value = value
    @next_list = next_list
  end

  def exists?(value)
    return false if @value != value && @next_list.nil?

    return true if @value == value

    @next_list.exists?(value)
  end
end

list10 = LinkedList.new(10)
list9 = LinkedList.new(9, list10)
list8 = LinkedList.new(8, list9)
p list8.exists?(9)