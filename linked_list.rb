# frozen_string_literal: true

require_relative 'node'

# allows to use linked lists in Ruby
class LinkedList
  def initialize
    @head = Node.new
    @tail = @head
  end

  def append(value)
    if @head.value.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    end
  end

  def prepend(value)
    @head = @head.value.nil? ? Node.new(value) : Node.new(value, @head)
  end

  def size
    return 0 if @head.value.nil?

    node = @head
    size = 1
    until node.next_node.nil?
      size += 1
      node = node.next_node
    end
    size
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index, whole: false)
    size_var = size
    index = size_var + index if index.negative?
    return nil if size_var < index

    node = @head
    index.times { node = node.next_node }
    whole ? node : node.value
  end

  def pop
    return nil if @head.value.nil?

    node = @head
    node = node.next_node until node.next_node == @tail
    val = @tail.value
    node.next_node = nil
    @tail = node
    val
  end

  def contains?(value)
    node = @head
    return true if node.value == value

    until node.next_node.nil?
      node = node.next_node
      return true if node.value == value
    end
    false
  end

  def find(value)
    index = 0
    node = @head
    return 0 if node.value == value

    until node.next_node.nil?
      index += 1
      node = node.next_node
      return index if node.value == value
    end
    nil
  end

  def to_s
    node = @head
    print "( #{node.value} ) -> "
    until node.next_node.nil?
      node = node.next_node
      print "( #{node.value} ) -> "
    end
  end

  def insert_at(value, index)
    size_var = size
    index = size_var + index + 1 if index.negative?
    raise IndexError, 'Index out of bounds' if size_var + 1 <= index

    if index.zero?
      prepend(value)
    else
      index + 1 < size_var ? at(index - 1, whole: true).next_node = Node.new(value, at(index, whole: true)) : append(value)
    end
  end

  def remove_at(index)
    size_var = size
    index = size_var + index if index.negative?
    raise IndexError, 'Index out of bounds' if size_var <= index

    if index.zero?
      @head = @head.next_node
    else
      at(index - 1, whole: true).next_node = at(index, whole: true).next_node
      @tail = at(index - 1, whole: true) if index == size_var - 1
    end
  end
end
