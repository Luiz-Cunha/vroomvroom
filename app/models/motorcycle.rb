class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles

  validates :image_url, :description, :motorcycle_type, :make, :model, :year, presence: true
end
