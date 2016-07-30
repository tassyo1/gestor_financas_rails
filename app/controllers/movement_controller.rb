class MovementController < ApplicationController
 # before_action :meu_metodo,  only: [:index]
  def index
    @movements = Movement.all.order(date_launched: :desc) 
  end
end
