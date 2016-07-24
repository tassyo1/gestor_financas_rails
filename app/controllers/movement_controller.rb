class MovementController < ApplicationController
  def index
    @movements = Movement.all.order(date_launched: :desc) 
  end
end
