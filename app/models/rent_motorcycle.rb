class RentMotorcycle < ApplicationRecord
  belongs_to :user
  belongs_to :motorcycle
  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: %w[pending approved rejected] }

  before_validation :set_default_status, on: :create
  after_validation :calculate_total_price

  def calculate_total_price
    if start_date && end_date
      total_days = (end_date - start_date).to_i + 1
      self.total_price = motorcycle.price * total_days
    else
      self.total_price = 0
    end
  end
  private

  def set_default_status
    self.status ||= 'pending'
  end
end
