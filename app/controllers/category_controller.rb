class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end
end
