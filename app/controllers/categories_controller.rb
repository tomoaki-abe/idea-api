class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:ideas)
  end

  def new
    @category = Category.new
    @category.ideas.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path, notice: '登録できました'
    else
      render :new
    end
  end

  def choice
    @categories = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:name, ideas_attributes: [:body])
  end
end
