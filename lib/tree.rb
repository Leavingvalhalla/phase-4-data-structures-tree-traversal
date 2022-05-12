class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(string)
    nodes_to_visit = [@root]
    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      return node if node[:id] == string
      nodes_to_visit = node[:children] + nodes_to_visit
    end
  end

      


end

# def breadth_first_traversal(node)
#   result = []
#   nodes_to_visit = [node]
#   while nodes_to_visit.length > 0
#     node = nodes_to_visit.shift
#     result.push(node[:value])
#     nodes_to_visit += node[:children]
#   end
#   result
# end

# def depth_first_traversal(node)
#   result = []
#   nodes_to_visit = [node]
#   while nodes_to_visit.length > 0
#     node = nodes_to_visit.shift
#     result.push(node[:value])
#     # nodes_to_visit.unshift(node[:children])
#     nodes_to_visit = node[:children] + nodes_to_visit
#   end
#   result
# end