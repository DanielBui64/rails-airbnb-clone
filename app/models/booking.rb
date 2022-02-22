class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  validates :date_end, :date_start, presence: true
end
