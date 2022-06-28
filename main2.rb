require_relative 'linked_ver2'
require 'pry'

list = List.new

list.create_node(1)
list.create_node(2)
list.create_node(3)
list.create_node(0)

list.next_node_correction

p list.instances

list.head

list.tail



list.append(14)

list.prepend(16)

list.size

list.popit

list.at_index(3)

list.find(0)

list.to_s

list.delete_at(0)

list.insert_at(0, 'Ruling this list!')

list.next_node_correction

list.to_s

puts 'DONE!'
