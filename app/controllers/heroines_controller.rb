class HeroinesController < ApplicationController
  
  def index
    @heroines = Heroine.all
  end

  def new
  end

  def create
    Heroine.create({
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    })
    redirect_to("/heroines")
  end

  def show
    @heroine = Heroine.find_by({ id:params[:id]})
    @power = Power.find_by({ id:params[:id]})
  end
end
