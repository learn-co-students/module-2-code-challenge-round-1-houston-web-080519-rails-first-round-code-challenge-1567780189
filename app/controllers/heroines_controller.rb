class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    Power.all.each do |power|
      if power.id == @heroine.power_id
        @power = power.name
      end
    end
  end

  def new
    @powers = Power.all
  end

  def create
    Heroine.create({
      name: params[:name],
      super_name: params[:super_name],
      power_id: params[:power_id]
    })
    redirect_to "/heroines/"
  end
end
