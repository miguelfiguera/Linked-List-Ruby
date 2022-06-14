module SecundaryMethods
        # Secundary methods (needed methods for the primary methods to work).
    def next_node_correction
        num = @@instances.length
        @@instances.each_with_index do |node,i|
            if i < num
                node.next_node = node[i+1]
            elsif i == num
                node.next_node = nil
            end
        end
    end
            



end