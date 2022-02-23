class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :make_model_year, :location, :price_per_day, :description, :capacity, presence: true
  validates :price_per_day, :capacity, numericality: true
  # validates :type, inclusion: { in: %w[small medium big huge] }
end
