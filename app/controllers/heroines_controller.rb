class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
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
end
