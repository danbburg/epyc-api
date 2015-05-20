json.array!(@nodes) do |node|
  json.extract! node, :id, :rating, :depth, :root_node, :parent_id, :data, :datatype
  json.url node_url(node, format: :json)
end
