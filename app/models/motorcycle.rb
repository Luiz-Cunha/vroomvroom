class Motorcycle < ApplicationRecord
  belongs_to :user
  has_many :rent_motorcycles
end
