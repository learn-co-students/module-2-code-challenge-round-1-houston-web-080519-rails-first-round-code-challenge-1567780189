class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.search(params[:search])
  end
  
  def new
  end

  def create
  end

  def show
    @heroine = Heroine.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def heroines_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end
end
