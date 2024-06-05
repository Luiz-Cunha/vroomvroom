class RentMotorcycle < ApplicationRecord
  belongs_to :user
  belongs_to :motorcycle

  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: %w[pending approved rejected] }

  before_validation :set_default_status, on: :create

  private

  def set_default_status
    self.status ||= 'pending'
  end
end
