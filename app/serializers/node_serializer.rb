class NodeSerializer < ActiveModel::Serializer
  attributes :id, :rating, :depth, :root_node, :parent_id, :data, :datatype
end
