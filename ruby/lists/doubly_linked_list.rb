# doubly linked linke

class Node
  attr_accessor :next_node

  def initialize(value, prev_node = nil, next_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end

  def exists?(value)
    return false if @value != value && @next_node.nil?

    return true if @value == value

    @next_node.exists?(value)
  end
end

class LinkedList
  attr_reader :tail, :head

  def initialize
    @tail = nil
    @head = nil
  end

  def append(value)
    # Verifica se o head é nil, se for, cria um novo nó e seta o head e o tail para ele (já que ele é o primeiro nó da lista)
    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      # Se o head não for nil, cria um novo nó e seta o next_node do tail para o novo nó. Logo após, o novo nó será o novo tail e ele terá o next_node nil
      @tail.next_node = Node.new(value, @tail)
      @tail = @tail.next_node
    end
  end
end

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
p list

# node0 = Node.new(0)

# node1 = Node.new(1, node0)
# node0.next_node = node1

# node2 = Node.new(2, node1)
# node1.next_node = node2

# node3 = Node.new(3, node2)
# node2.next_node = node3










# p head8.exists?(9)