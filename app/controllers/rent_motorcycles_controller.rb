class RentMotorcyclesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def approve
    @rent_motorcycle.update(status: 'approved')
    redirect_to motorcycle_path(@rent_motorcycle.motorcycle), notice: 'Rental request approved.'
  end

  def reject
    @rent_motorcycle.update(status: 'rejected')
    redirect_to motorcycle_path(@rent_motorcycle.motorcycle), notice: 'Rental request rejected.'
  end

  private

  def set_rent_motorcycle
    @rent_motorcycle = RentMotorcycle.find(params[:id])
  end
end
