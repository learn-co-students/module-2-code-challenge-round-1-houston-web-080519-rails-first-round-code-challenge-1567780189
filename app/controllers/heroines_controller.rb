class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show 
    @powers = Power.all
    @heroine = Heroine.find(params[:id])
  end

  def new
    @powers = Power.all
  end

  def create
    @heroines = Heroine.all
     heroine = @heroines.sample
     heroine.create({
     name: params[:name],
     super_name: params[:super_name],
     power_id: params[:power.id]
      })
     redirect_to "/heroines/index"
  end

end
