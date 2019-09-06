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
    redirect_to "/heroines"
  end


end
