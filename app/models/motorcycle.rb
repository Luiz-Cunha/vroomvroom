class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles
  #has_many :wishlists
  #has_many :users, through: :wishlists

  has_one_attached :photo

  validates :make, :model, :typeM, :year, :description, presence: true
end
