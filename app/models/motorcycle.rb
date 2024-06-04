class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles
  has_one_attached :photo

  validates :make, :model, :typeM, :year, :description, :photo, presence: true

end
