class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @powers = Power.all 
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power_id = @heroine.power_id
    @power = Power.find(@power_id)
  end

  def create
    @same = Heroine.find_by(super_name: params[:super_name])
    if @same 
      redirect_to '/heroines/new'
    else
      @heroine = Heroine.create({
        name: params[:name],
        super_name: params[:super_name],
        power_id: params[:power_id]
      })

      @power_id = @heroine.power_id
      @power = Power.find(@power_id)
    end
  end
end
