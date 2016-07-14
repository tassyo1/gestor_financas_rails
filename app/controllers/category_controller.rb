class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end

  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @category }
    end
  end
end
