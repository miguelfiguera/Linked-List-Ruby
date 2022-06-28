class Node
    attr_accessor :value, :children
    def initialize (value=nil, children=nil)
        @value=value
        @children=children
    end
end

class List
    
    attr_accessor :instances , :head, :tail, :node_num
    def initialize
        @instances=[]
        @node_num= 0
        @head = @instances[0]
        @tail = @instances[-1]
    end

    def next_node_correction
        leng=@instances.length
        @instances.each_with_index do|n,i|
            if i < leng -1
                n.children = @instances[i+1].value
            elsif i == leng-1
                n.children = nil
            end
        end
        @head = @instances[0]
        @tail = @instances[-1]
    end

    def create_nodes_array(array)
        array.each_with_index do |n,i|
            create_node(n,array[i+1]) unless array[i+1].nil?
        end
    end


    def create_node(value=nil,next_node=nil)
        @instances.push(Node.new(value,next_node))
         @node_num += 1
    end

    def append(value,next_node=nil)
        create_node(value)
        next_node_correction
    end

    def prepend(value=nil)
        new_node=Node.new(value)
        @instances.unshift(new_node)
        next_node_correction
    end

    def size
        p @instances.size
    end

    def head
        p @head
    end

    def tail
        p @tail
    end

    def popit
        @instances.pop
        @node_num -= 1
    end

    def at_index(num)
        p @instances[num]
    end

    def find(value)
        @instances.each_with_index {|n,i| puts "Node #{n} is at #{i} index." if n.value == value }
    end

    def to_s
        @instances.each do |n|
            p "( #{n.value} ) -> ( #{n.children} ) ->"
        end
    end

    def delete_at(index)
        @instances.delete_at(index)
        next_node_correction
    end

    def insert_at(index,value=nil,next_node=nil)
        binding.pry

        puts "Value of this node is nil." if value.nil? && next_node.nil?
        newer_node = Node.new(value)
        @instances.insert(index,newer_node)
        next_node_correction
    end
end