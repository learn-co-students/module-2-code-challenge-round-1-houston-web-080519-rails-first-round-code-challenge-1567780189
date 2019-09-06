class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @powers = Power.all
    @heroines = Heroine.all
  end

  def create
    @heroine = Heroine.create({
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    })
    redirect_to "/heroines"
  end

end
