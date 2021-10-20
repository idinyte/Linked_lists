require_relative 'linked_list'

list = LinkedList.new
puts "append 3"
list.append(3)
p list.to_s
puts "append 6"
list.append(6)
p list.to_s
puts "append 9"
list.append(9)
p list.to_s
puts "append 12"
list.append(12)
p list.to_s
puts "append 15"
list.append(15)
p list.to_s
puts "preppend 4"
list.prepend(4)
p list.to_s
puts "preppend 8"
list.prepend(8)
p list.to_s
puts "insert_at(17, 4)"
list.insert_at(17, 4)
p list.to_s
puts "insert_at(7, 0)"
list.insert_at(7, 0)
p list.to_s
puts "insert_at(99, list.size)"
list.insert_at(99, list.size)
p list.to_s
puts "insert_at(14, -1)"
list.insert_at(14, -1)
p list.to_s
puts "remove_at(-1)"
list.remove_at(-1)
p list.to_s
puts "remove_at(list.size-1)"
list.remove_at(list.size-1)
p list.to_s
puts "remove_at(0)"
list.remove_at(0)
p list.to_s
puts "pop"
p list.pop
p list.to_s
puts "pop"
p list.pop
p list.to_s
puts "head"
p list.head
puts "tail"
p list.tail
puts "contains?(9)"
p list.contains?(9)
puts "contains?(144)"
p list.contains?(144)
puts "find(17)"
p list.find(17)
puts "find(8)"
p list.find(8)
puts "find(9)"
p list.find(9)
puts "find(29)"
p list.find(29)
puts "size"
p list.size
puts "at(3)"
p list.at(3)
puts "at(-1)"
p list.at(-1)
puts "at(12)"
p list.at(12)
