class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles, dependent: :destroy
  #has_many :wishlists
  #has_many :users, through: :wishlists

  has_one_attached :photo

  validates :make, :model, :typeM, :year, :description, :price, :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_make_and_model,
    against: [ :make, :model ],
    using: {
      tsearch: { prefix: true }
    }
end
