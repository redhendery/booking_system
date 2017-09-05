class Booking < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :date, :time, presence: true
end
