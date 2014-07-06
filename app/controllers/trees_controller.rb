class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(allowed_params)
    @tree.save
    redirect_to '/trees'
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    @tree.tree_name = params[:tree][:tree_name]
    @tree.save
    redirect_to '/trees'
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to '/trees'
  end

  private

  def allowed_params
    params.require(:tree).permit(:tree_name)
  end

end
