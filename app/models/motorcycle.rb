class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles

  def show
    @motorcycle = Motorcycle.find(params[:id])
  end
end
