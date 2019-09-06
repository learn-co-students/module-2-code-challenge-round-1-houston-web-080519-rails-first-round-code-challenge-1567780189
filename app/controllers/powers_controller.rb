class PowersController < ApplicationController
  def index
    @powers = Power.all
  end
  
  def new
  end

  def create
  end

  def show
    @power = Power.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end
end
