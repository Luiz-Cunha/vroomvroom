class RentMotorcycle < ApplicationRecord
  belongs_to :user
  belongs_to :motorcycle
  after_validation :calculate_total_price

  def calculate_total_price
    if start_date && end_date
      total_days = (end_date - start_date).to_i + 1
      self.total_price = motorcycle.price * total_days
    else
      self.total_price = 0
    end
  end
end
