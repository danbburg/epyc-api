class NodesController < ApplicationController
  before_action :set_node, only: [:show, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    @nodes = Node.all

    render json: @nodes
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
    render json: @node
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(node_params)

    if @node.save
      render json: @node, status: :created, location: @node
    else
      render json: @node.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    @node = Node.find(params[:id])

    if @node.update(node_params)
      head :no_content
    else
      render json: @node.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy

    head :no_content
  end

  private

    def set_node
      @node = Node.find(params[:id])
    end

    def node_params
      params.require(:node).permit(:rating, :depth, :root_node, :parent_id, :data, :datatype)
    end
end
