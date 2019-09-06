class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find_by_id(params[:id])
    @power = Power.find(@heroine.power_id)
  end

  def new
    @powers = Power.all
  end

  def create
    
    @newHeroine = Heroine.create({
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    })
    redirect_to("/heroines/#{@newHeroine.id}")
  end

end
