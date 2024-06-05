class MotorcyclesController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :set_motorcycle, only: [:show, :edit, :update, :destroy]

  def index
    @motorcycles = Motorcycle.all
  end

  def show
    @rent_motorcycle = RentMotorcycle.new
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.user = current_user
    if @motorcycle.save
      redirect_to motorcycles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @motorcycle.update(motorcycle_params)
      redirect_to @motorcycle, notice: "Motorcycle was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @motorcycle.destroy
    redirect_to motorcycles_path, status: :see_other
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:make, :model, :typeM, :year, :description, :price, :photo)

  end
end
