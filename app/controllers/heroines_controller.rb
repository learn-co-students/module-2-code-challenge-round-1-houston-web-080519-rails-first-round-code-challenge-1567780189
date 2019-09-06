class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  
  def show
    @heroine = Heroine.find_by_id({id: params[:id]})
  end 
end
