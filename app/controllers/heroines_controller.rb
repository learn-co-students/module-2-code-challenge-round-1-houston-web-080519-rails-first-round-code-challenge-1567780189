class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    render(:index)
  end
  
  def create
    Heroine.create({
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    })
    
    redirect_to "/heroines"
  end 
  def new
    @powers = Power.all
    
  end 
  def show
    @heroine = heroine.find_by({ id: params[:id]})
    render(:show)
  end 
end
