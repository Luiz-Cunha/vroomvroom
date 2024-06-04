class MotorcyclesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @motorcycle = Motorcycle.find(params[:id])

  end

  def update
    @motorcycle = Motorcycle.find(params[:id])
    if @motorcycle.update(motorcycle_params)
      redirect_to @motorcycle, notice: "Motorcycle was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:image_url, :description, :make, :model, :year, :user_id)
  end

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
end
