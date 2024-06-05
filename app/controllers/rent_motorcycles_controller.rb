class RentMotorcyclesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
    @rent_motorcycle = RentMotorcycle.new
  end

  def create
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
    @rent_motorcycle = RentMotorcycle.new(rent_motorcycle_params)
    @rent_motorcycle.motorcycle = @motorcycle
    @rent_motorcycle.user = current_user
    if @rent_motorcycle.save
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

  def rent_motorcycle_params
    params.require(:rent_motorcycle).permit(:start_date, :end_date)
  end
end
