class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show 
    @power = Power.find_by_id({id: params[:id]})
  end
end
