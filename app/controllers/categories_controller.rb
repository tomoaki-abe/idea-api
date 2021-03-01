class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:ideas)
  end
  
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @category.ideas.build
  end

  def create
    # binding.pry
    Category.create(category_params)
  end

  private
  def category_params
    params.require(:category).permit(:name, ideas_attributes: [:body])
  end
end
