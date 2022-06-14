require_relative "secundary_methods.rb"

class Node
    attr_accessor :next_node
    attr_reader :value
    def initialize ( value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end


class LinkedList
    attr_accessor :head, :tail
    include SecundaryMethods
    @@node_count= 0
    @@instances = []

    def initialize
        @head = nil
        @tail = nil
    end

    def create_node(value=nil, next_node=nil)
        @@instances.push (Node.new(value, next_node))
        @@node_count += 1
    end

    def append(value)
        if @head.nil?
            @head = create_node(value)
        elsif !@head.nil?
            @tail = create_node(value)
        end
        next_node_correction
    end

    def prepend(value)
        @head = Node.new(value)
        @@instances.push(@head)
        @head.next_node = @@instances[1]
    end

    def size
        size_of_nodes = @@instances.size
        size_of_nodes
    end

    def head
       p @head
    end

    def tail
        p @tail
    end

    def at(index)
        @@instances[index]
    end

    def pop 
        @@instances.pop
        next_node_correction
    end
    
    def contains?(value)
        @@instances.include?(value)
    end

    def find(value)
        if @@instances.include?(value)
            @@instances.each_with_index do |node,i|
                if node.value == value
                    puts "#{node} is in the index #{i}."
                end
            end
        elsif !@@instances.include?(value)
            puts "Node not found"
        end
    end

    def to_s
        @@instances.each do |node|
            print " [#{node.value}] -> "
    end


end