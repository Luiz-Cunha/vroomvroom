class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @rented_motorcycles = current_user.rent_motorcycles
    @listed_motorcycles = current_user.motorcycles
  end

  def approve_request
    @rent_motorcycle = RentMotorcycle.find(params[:id])
    @rent_motorcycle.update(status: 'approved')
    redirect_to dashboard_path, notice: 'Rental request approved.'
  end

  def reject_request
    @rent_motorcycle = RentMotorcycle.find(params[:id])
    @rent_motorcycle.update(status: 'rejected')
    redirect_to dashboard_path, notice: 'Rental request rejected.'
  end

  def decide_later_request
    @rent_motorcycle = RentMotorcycle.find(params[:id])
    @rent_motorcycle.update(status: 'decide_later')
    redirect_to dashboard_path, notice: 'Rental request will be decided later.'
  end
end
