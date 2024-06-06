class WishlistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_motorcycle, only: [:create, :destroy]

  def create
    current_user.wishlists.create(motorcycle: @motorcycle)
    redirect_back fallback_location: root_path, notice: 'Motorcycle added to wishlist.'
  end

  def destroy
    current_user.wishlists.find_by(motorcycle: @motorcycle).destroy
    redirect_back fallback_location: root_path, notice: 'Motorcycle removed from wishlist.'
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
  end
end
