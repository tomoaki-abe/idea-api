class IdeasController < ApplicationController
  def new
    @idea = Idea.new
    @categories = Category.all
    # @category.ideas.new
  end

  def create
    @idea = Idea.new(body: idea_params[:body], category_id: idea_params[:name])
    if @idea.save
      redirect_to root_path, notice: '追加しました'
    else
      render :new
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:body, :name)
  end
end
