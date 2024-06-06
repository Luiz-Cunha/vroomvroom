class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :motorcycles, dependent: :destroy
  has_many :rent_motorcycles
  #has_many :wishlists
  #has_many :motorcycles, through: :wishlists
  #has_many :rented_motorcycles, class_name: 'RentMotorcycle'
  has_one_attached :photo
end
