class FrontsController < ApplicationController
  def index
    @categories = Category.includes(:ideas)
  end

  def search
    @categories = Category.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
