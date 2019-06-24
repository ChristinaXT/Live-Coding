class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @heroines = Heroine.search(params[:search])
  end

  def show
    @heroine = Heroine.find_by(id: params[:id])
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path
    else
      render 'new'
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end
end
