class User < ApplicationRecord
  has_many :bookings
  has_many :boats

  validates :first_name, :last_name, :email, :password, :phone_number, :date_of_birth, presence: true
  validates :email, uniqueness: true
end
