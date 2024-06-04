class MotorcyclesController < ApplicationController
  def index
  end

  def show
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
  end

  def destroy
  end

  private
  def motorcycle_params
    params.require(:motorcycle).permit(:make, :model, :typeM, :year, :description, :photo)
  end
end
