class CategoryController < ApplicationController
  include CategoryHelper 
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
  def create 
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        flash[:notice] = 'Categoria criada com sucesso'
        format.html { redirect_to(@category) }
        format.xml  { render xml: @category, status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  def category_params
   par = params.require(:category).permit(:name,:type_category,:frequency_id,:date_scheduled,:value) 
   par[:date_scheduled] = format_data(par[:date_scheduled])
   par
  end
end
