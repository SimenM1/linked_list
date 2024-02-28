class Node
  attr_accessor(:value, :next_node)

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end



class LinkedList
  attr_accessor(:head)

  def initialize(value)
    @head = Node.new(value)
  end

  def append(value)
    if @head.next_node == nil
      @head.next_node = Node.new(value)
    else
      current = @head
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head.next_node = Node.new(value, @head.next_node)
  end

  def size()
    current = @head
    counter = 1
    until current.next_node == nil
      current = current.next_node
      counter += 1
    end
    p counter
  end

  def tail()
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    p current
  end

  def at(index)
    current = @head
    (index-1).times do
      current.next_node
    end
    p current
  end

  def contains(value)
    current = @head
    until current.next_node == nil
      if current.value == value
        return true
      end
      current = current.next_node
    end
    return false
  end

  def find(value)
    index = 1
    current = @head
    until current.next_node == nil
      if current.value == value
        return index
      end
      index += 1
      current = current.next_node
    end
    return nil
  end

  def to_s
    index = 1
    current = @head
    until current.next_node == nil      
      print "( #{current.value} ) =>"
      current = current.next_node
    end
    return nil
  end
end

a = LinkedList.new(2)
p a
a.append(21)
a.append(9)
a.prepend(4)
p a
a.size()
a.tail
a.to_s