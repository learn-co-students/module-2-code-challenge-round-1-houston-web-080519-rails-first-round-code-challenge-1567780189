class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def new
    @powers = Power.all
  end

  def create
    
    # if params[:super_name].new_record? 
      @heroine = Heroine.create(
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    )
    # end
  
    redirect_to "/heroines/#{@heroine.id}"
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end



end
