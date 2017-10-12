class Booking < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true, length: { minimum: 3 }
  validates :date, :time, presence: true
end
