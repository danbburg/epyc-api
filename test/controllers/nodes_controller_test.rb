require 'test_helper'

class NodesControllerTest < ActionController::TestCase
  setup do
    @node = nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nodes)
  end

  test "should create node" do
    assert_difference('Node.count') do
      post :create, node: { data: @node.data, datatype: @node.datatype, depth: @node.depth, parent_id: @node.parent_id, rating: @node.rating, root_node: @node.root_node }
    end

    assert_response 201
  end

  test "should show node" do
    get :show, id: @node
    assert_response :success
  end

  test "should update node" do
    put :update, id: @node, node: { data: @node.data, datatype: @node.datatype, depth: @node.depth, parent_id: @node.parent_id, rating: @node.rating, root_node: @node.root_node }
    assert_response 204
  end

  test "should destroy node" do
    assert_difference('Node.count', -1) do
      delete :destroy, id: @node
    end

    assert_response 204
  end
end
