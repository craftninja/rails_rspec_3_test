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

  private

  def allowed_params
    params.require(:tree).permit(:tree_name)
  end

end
