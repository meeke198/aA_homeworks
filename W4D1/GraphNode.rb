class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        self.value = value
        self.neighbors = []
    end

    def add_neighbor(neighbor_node)
        self.neighbors << neighbor_node
    end



    def bfs(starting_node, target_value)
        visited = Set.new()
        queue = [starting_node]
        
        until queue.empty? 
            current_node = queue.shift
            unless visited.inlude?(current_node)
                return current_node.value if current_node.value == target_value
                visited.add(current_node)
                queue.push(current_node.neighbors)
            end
        end
        
        return nil
    end

end