require_relative 'linke_list'
require 'pry'

books = LinkedList.new

books.append('harry potter 1')
books.append('harry potter 2')
books.append('harry potter 3')

books.to_s

p books

p books.tail
p books.head

p books.size

books.prepend('Harry Potter and the cursde child')

books.to_s

books.pop

books.to_s

books.contains?('Lord of the rings')

books.find('The power of my cock')

books.find('harry potter 1')

puts 'This is the end of the instructions.'
